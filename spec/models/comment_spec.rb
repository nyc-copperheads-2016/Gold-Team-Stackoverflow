require 'rails_helper'

RSpec.describe Comment, type: :model do

  before(:each) do
    @comment_question = FactoryGirl.create(:comment_question)
  end

  describe 'Polymorphism' do
    context 'Comment can only be associated with a question' do
      it {should belong_to(:commentable)}
    end
  end
end
