require 'rails_helper'

RSpec.describe Vote, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'voter' do
    it 'A vote can call voter on it to see the user association' do
      ryan=Vote.new(up_vote: false)
      expect(ryan.voter).to be_defined
   end
  end
end
