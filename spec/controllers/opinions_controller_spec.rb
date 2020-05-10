require 'rails_helper'
require_relative "../support/devise"

RSpec.describe OpinionsController, type: :controller do
  describe "GET /" do
    it "returns 200" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
    describe "POST /opinion" do
     context "without logged user" do
       it "fails to create oponion" do
         expect{perform}.to change(Opinion, :count).by(0)
       end
     end
     context "with logged user" do
       login_user
       it "creates opinion" do
       # This one will be failing without login
         expect { perform }.to change(Opinion, :count).by(1)
       end
    end
    
      def perform
        post :create, :params => {opinion: {content: "test"}}
      end
    
    end
end