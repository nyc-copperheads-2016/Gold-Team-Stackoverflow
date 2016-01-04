module Voting
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