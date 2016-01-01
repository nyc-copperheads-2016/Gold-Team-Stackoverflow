require 'rails_helper'

RSpec.describe Comment, type: :model do

  describe 'polymorphism' do
    it 'Has polmorphic associations' do
      ryan= User.new(username: "bigless", password: "hello")
      question= Question.new()



end
