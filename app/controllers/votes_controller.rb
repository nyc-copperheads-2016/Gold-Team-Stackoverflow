class VotesController < ApplicationController
  before_action :require_login, only: [:create, :update]

  def create
    if params[:question_id]
      q_or_a = Question.find(params[:question_id])
    elsif params[:answer_id]
      q_or_a = Answer.find(params[:answer_id])
    end

    vote = q_or_a.votes.find_or_initialize_by(user: current_user)

    if params[:vote] == 'up'
      vote.upvote = true
    else
      vote.upvote = false
    end

    if vote.save
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
end
