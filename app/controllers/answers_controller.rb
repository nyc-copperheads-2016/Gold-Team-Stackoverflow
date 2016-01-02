class AnswersController < ApplicationController

  def new
    @answer=Answer.new
    @question=Question.find(params[:question_id])
  end

  def create
    @answer=Answer.new(answer_params)

    if @answer.save
      redirect_to @answer
    else
      render :new
    end
  end

  def show
    @answer=Answer.find(params[:id])
  end

  def edit
    @answer=Answer.find(params[:id])
  end

  def update
    @answer=Answer.find(params[:id])
    if @answer.update_attributes(answer_params)
      redirect_to @answer
    else
      render :edit
    end
  end

  def destroy

    answer=Answer.find(params[:id])
    question=answer.question
    answer.delete

    redirect_to question_path(question)
  end

  private

  def answer_params
    params.require(:answer).permit(:content, :favorite,:user_id)
  end

end
