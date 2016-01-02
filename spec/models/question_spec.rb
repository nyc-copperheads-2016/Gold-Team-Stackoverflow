require 'rails_helper'



RSpec.describe Question, type: :model do

  before(:each) do
    @comment= FactoryGirl.create(:comment_question)
    @vote= FactoryGirl.create(:vote_question)
  end

  describe 'polymorphism' do

    context 'FactoryGirl'do
      it 'Question polymorphism is associated' do
        expect(@comment.commentable).to be_instance_of(Question)
      end

      it 'Question polymorphism is associated' do
        expect(@vote.voteable).to be_instance_of(Question)
      end
    end

    context Question do
      it {should belong_to (:user)}
      it {should have_many (:comments)}
      it {should have_many (:votes)}
      it {should have_many (:answers)}
    end
  end
end
