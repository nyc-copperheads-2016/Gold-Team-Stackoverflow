FactoryGirl.define do


  factory :user do
    username { Faker::Internet.user_name  }
    password 'password'
  end

  factory :question do
    title {Faker::Book.title}
    body {Faker::Team.name}
    association :user
  end

  factory :comment_question, class: "Comment" do
    association :commentable, factory: :question
    response {Faker::Hipster.sentence}
    association :user
  end

  factory :comment_answer, class: "Comment" do
    association :commentable, factory: :answer
    response {Faker::Hipster.sentence}
    association :user
  end

  factory :vote_question, class: 'Vote' do
    association :votable, factory: :question
    upvote {false}
    association :user
  end

  factory :vote_answer, class: 'Vote' do
    association :votable, factory: :question
    upvote {false}
    association :user
  end

  factory :answer do
    content {Faker::Hipster.sentence}
    favorite {false}
    association :user
  end
end


