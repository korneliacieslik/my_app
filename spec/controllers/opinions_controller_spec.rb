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
  end 
  describe "DElETE /opinion" do
    create_opinion
    context "without logged user" do
      it "fails to delete opinion" do 
        expect {delete_opinion}.to change(Opinion, :count).by(0)
      end 
    end 
    context "with logged user" do 
      login_user
      it "delete opinion" do 
        expect{delete_opinion}.to change(Opinion, :count).by(-1)
      end
    end
  end 

    def perform
     post :create, :params => {opinion: {content: "test"}}
    end

    def delete_opinion
     delete :destroy, :params => {opinion: {id: }}
    end
end
