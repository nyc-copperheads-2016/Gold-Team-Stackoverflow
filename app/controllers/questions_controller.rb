class QuestionsController < ApplicationController
  before_action :require_login, only: [:new, :create, :edit, :update]

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.new(question_params)
    if @question.save
      redirect_to :root
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.includes(:user)
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      redirect_to @question
    else
      render :edit
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end
