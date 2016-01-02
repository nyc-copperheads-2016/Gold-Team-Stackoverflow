require 'rails_helper'

RSpec.describe Answer, type: :model do

  before(:each) do
    @answer=FactoryGirl.create(:answer)
    @comment= FactoryGirl.create(:comment_answer)
    @vote= FactoryGirl.create(:vote_answer)
  end

  describe Answer, type: :model do

    it {should belong_to(:question)}
    it {should belong_to (:user)}
    it {should have_many (:comments)}
    it {should have_many (:votes)}
  end

end
