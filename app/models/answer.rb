class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :voteable, dependent: :destroy

  def net_votes
    upvotes - downvotes
  end

  private

  def upvotes
    votes.where(upvote: true).count
  end

  def downvotes
    votes.where(upvote: false).count
  end
end
