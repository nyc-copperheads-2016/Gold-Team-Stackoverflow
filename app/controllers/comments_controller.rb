class CommentsController < ApplicationController
  before_action :require_login, only: [:new, :create, :destroy]

  def new
    @comment=Comment.new
  end

  def edit
    @commentable = load_commentable
    @comment = Comment.find(params[:id])
  end

  def create

    q_or_a = load_commentable
    comment = q_or_a.comments.find_or_initialize_by(comment_params)
    comment.user= current_user

    if comment.save
       if params[:question_id]
        redirect_to question_path(q_or_a)
      elsif params[:answer_id]
        redirect_to question_answers_path(q_or_a.question)
      end
    else
      if params[:question_id]
        render :root
      elsif params[:answer_id]
        render question_answers_path(q_or_a.question)
      end
    end
  end

  def update
    @commentable = load_commentable
    @comment = Comment.find(params[:id])
    @comment.assign_attributes(comment_params)
    if @comment.save
      redirect_to @commentable.try(:question) || @commentable 
    else
      render :edit
    end

  end



  def destroy
    comment= Comment.find_by(commentable_id:params[:id])
    if comment.delete
      redirect_to questions_path(comment.commentable.id)
    else
      render questions_path(comment.commentable.id)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:response)
  end

  def load_commentable
      if params[:question_id]
      q_or_a = Question.find(params[:question_id])
    elsif
      q_or_a = Answer.find(params[:answer_id])
    end
    q_or_a
end

end
