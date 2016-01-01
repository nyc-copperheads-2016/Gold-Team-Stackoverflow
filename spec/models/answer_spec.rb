require 'rails_helper'

before(:each) do
  @question= FactoryGirl.create(:comment_answer)
end

before(:each) do
  @vote= FactoryGirl.create(:vote_answer)
end

RSpec.describe Answer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
