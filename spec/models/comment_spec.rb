require 'rails_helper'

RSpec.describe Comment, type: :model do

  before(:each) do
    @question = FactoryGirl.create(:comment_question)
    @answer = FactoryGirl.create(:comment_answer)
  end


  describe 'Comment' do
    context 'Association' do
    it {should belong_to(:commentable)}
    it {should belong_to (:user)}
    end
  end
end
