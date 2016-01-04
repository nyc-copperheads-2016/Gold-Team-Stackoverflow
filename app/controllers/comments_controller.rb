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

    comment = q_or_a.votes.find_or_initialize_by(user:current_user)

    if pat


  end

  def show

  end

  def update

  end

  def destroy

  end

end
