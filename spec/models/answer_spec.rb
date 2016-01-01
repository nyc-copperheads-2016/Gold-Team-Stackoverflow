require 'rails_helper'



RSpec.describe Answer, type: :model do

  before(:each) do
    @question= FactoryGirl.create(:comment_answer)
  end

  before(:each) do
    @vote= FactoryGirl.create(:vote_answer)
  end

end
