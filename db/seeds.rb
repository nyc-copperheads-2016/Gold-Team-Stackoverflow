User.create(username: 'admin', password: 'admin')

5.times do
  FactoryGirl.create(:question)
end

FactoryGirl.create(:answer)

FactoryGirl.create(:vote_answer)

FactoryGirl.create(:vote_question)

FactoryGirl.create(:comment_question)

FactoryGirl.create(:comment_answer)
