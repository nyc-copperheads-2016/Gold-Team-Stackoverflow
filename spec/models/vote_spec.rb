require 'rails_helper'

RSpec.describe Vote, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'voter' do
    it 'A vote can call user on it to see the user association' do

      ryan= User.new(username: "bigless", password: "hello")
      vote= ryan.votes.build(upvote:false)
      expect(vote.user).not_to be(nil)
   end
  end
end
