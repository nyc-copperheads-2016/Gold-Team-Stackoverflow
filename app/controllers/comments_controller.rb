class CommentsController < ApplicationController


  def new
    @comment=Comment.new
  end

  def create
    if params[:question_id]
      q_or_a = Question.find(params[:question_id])
    elsif
      q_or_a = Answer.find(params[:answer_id])
    end

    comment = q_or_a.comments.find_or_initialize_by(comment_params)

    comment.user= current_user

    if comment.save
       if params[:question_id]
        redirect_to question_path(q_or_a)
      elsif params[:answer_id]
        redirect_to question_path(q_or_a.question)
      end
    else
      if params[:question_id]
        render :root
      elsif params[:answer_id]
        render question_path(q_or_a.question)
      end
    end
  end

  def show

  end

  def update

  end

  def destroy

  end

  private

  def comment_params
    params.require(:comment).permit(:response)
  end

end


