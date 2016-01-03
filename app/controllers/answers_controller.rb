class AnswersController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = current_user.answers.new(answer_params)
    @answer.question = @question

    if @answer.save
      redirect_to question_path(@answer.question)
    else
      render :new
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update_attributes(answer_params)
      redirect_to question_path(@answer.question)
    else
      render :edit
    end
  end

  def destroy
    answer = Answer.find(params[:id])
    question = answer.question
    answer.delete

    redirect_to question_path(question)
  end

  private

  def answer_params
    params.require(:answer).permit(:content, :favorite, :user_id, :question_id)
  end

end
