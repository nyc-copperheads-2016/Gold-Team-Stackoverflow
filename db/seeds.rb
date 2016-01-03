admin = User.create!(username: 'admin', password: 'admin')

5.times do
  seed_question = FactoryGirl.create(:question)
  5. times do
    seed_question.answers.create!(content:'test content',
                                      favorite: false,
                                      user: admin)
  end
end

FactoryGirl.create(:answer)

FactoryGirl.create(:vote_answer)

FactoryGirl.create(:vote_question)

FactoryGirl.create(:comment_question)

FactoryGirl.create(:comment_answer)
