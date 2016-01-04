admin = User.create(username: 'admin', password: 'admin')

demo_question = Question.create(title: "What's the best coding bootcamp?",
                                     body: "I've heard Dev Bootcamp is awesome. Is that true?",
                                     user: admin)
rand(20).times do
  new_user = FactoryGirl.create(:user)
  demo_question.votes.create(upvote: true, user: new_user)
end

demo_question.comments.create(response: "Is this really a fair question?", user: FactoryGirl.create(:user))
demo_question.comments.create(response: "Of course!", user: FactoryGirl.create(:user))

demo_answer = demo_question.answers.create(content: "It was amazing!",
user: FactoryGirl.create(:user))

demo_answer = demo_question.answers.create(content: "YES! DBC is the best! I saw someone make a great StackTooDeep! App!",
                                                    user: FactoryGirl.create(:user),
                                                    favorite: true)

rand(20).times do
  new_user = FactoryGirl.create(:user)
  demo_answer.votes.create(upvote: true, user: new_user)
end

rand(5).times do
  seed_question = FactoryGirl.create(:question)
  rand(5).times do
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
