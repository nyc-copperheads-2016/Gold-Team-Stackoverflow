require 'rails_helper'



RSpec.describe Question, type: :model do

  before(:each) do
    @question= FactoryGirl.create(:comment_question)
  end

  before(:each) do
    @vote= FactoryGirl.create(:vote_answer)
  end

  describe 'polymorphism works for the questions model' do
  end


end
