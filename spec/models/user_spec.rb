require 'rails_helper'

RSpec.describe User, type: :model do

  describe User do

    context 'Association' do
      it {should have_many (:answers)}
      it {should have_many (:comments)}
      it {should have_many (:votes)}
      it {should have_many (:questions)}
    end
  end

end
