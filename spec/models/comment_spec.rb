require 'rails_helper'

RSpec.describe Comment, type: :model do

  before(:each) do
    @comment_question = FactoryGirl.create(:comment_question)
    # @comment_answer = FactoryGirl.create(:comment_answer)
  end

  describe 'Polymorphism' do
    context 'Comment can only be associated with a question' do
      binding.pry
      it {should belong_to(:commentable)}
    end
  end
end
