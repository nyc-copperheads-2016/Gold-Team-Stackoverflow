# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  FactoryGirl.create(:question)
end

FactoryGirl.create(:answer)

FactoryGirl.create(:vote_answer)

FactoryGirl.create(:vote_question)

FactoryGirl.create(:comment_question)

FactoryGirl.create(:comment_answer)

