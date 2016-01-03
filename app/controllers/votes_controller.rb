class VotesController < ApplicationController
  before_action :require_login, only: [:create, :update]

  def create
    question = Question.find(params[:question_id])
    if params[:vote] == 'up'
      vote = question.votes.find_or_initialize_by(upvote: true, user: current_user)
    else
      vote = question.votes.find_or_initialize_by(upvote: false, user: current_user)
    end
    if vote.save
      redirect_to :root
    else
      render :root
    end
  end
end
