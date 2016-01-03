class VotesController < ApplicationController
  before_action :require_login, only: [:create, :update]

  def create
    question = Question.find(params[:question_id])
    # For upvotes
    vote = question.votes.find_or_initialize_by(upvote: true, user: current_user)
    if vote.save
      redirect_to :root
    else
      render :root
    end
  end

  def update
    question = Question.find(params[:question_id])
    # For downvotes
    vote = question.votes.find_or_initialize_by(upvote: false, user: current_user)
    if vote.save
      redirect_to :root
    else
      render :root
    end
  end
end
