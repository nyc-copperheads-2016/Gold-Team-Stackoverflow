require 'spec_helper'

describe SessionsController do
	context "new" do
    it "is successful" do
      get :new
      expect(response).to be_success
    end
  end
end