require 'rails_helper'

RSpec.describe Vote, type: :model do

   describe Vote do

    context 'Association' do
      it {should belong_to (:voteable)}
      it {should belong_to (:user)}

    end
  end
end
