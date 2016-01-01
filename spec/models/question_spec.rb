require 'rails_helper'



RSpec.describe Question, type: :model do

  before(:each) do
    @comment= FactoryGirl.create(:comment_question)
  end

  before(:each) do
    @vote= FactoryGirl.create(:vote_question)
  end

  describe 'polymorphism' do

    context 'FactoryGirl'do
      it 'Question polymorphism is associated' do
        expect(@comment.commentable).to be_instance_of(Question)
      end

      it 'Question polymorphism is associated' do
        expect(@vote.votable).to be_instance_of(Question)
      end
    end

  end


end
