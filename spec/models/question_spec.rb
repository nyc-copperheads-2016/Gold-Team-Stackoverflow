require 'rails_helper'

before(:each) do
  @question= FactoryGirl.create(:comment_question)
end

before(:each) do
  @vote= FactoryGirl.create(:vote_answer)
end

RSpec.describe Question, type: :model do
  "add some examples to (or delete) #{__FILE__}"

  describe 'polymorphism works for the questions model' do
  end

end
