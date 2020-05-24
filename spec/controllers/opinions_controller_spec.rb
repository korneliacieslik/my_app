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
    context "without logged user" do
      let!(:opinion) { create(:opinion) } 
      it "fails to delete opinion" do  
        expect {delete :destroy, params: {id: opinion.id} }.to change(Opinion, :count).by(0)
      end
    end 
    context "with logged user" do 
      let!(:opinion) { create(:opinion) } 
      login_user
      it "deletes opinion" do 
        expect {delete :destroy, params: {id: opinion.id} }.to change(Opinion, :count).by(-1) 
      end
    end 
  end 
  describe "PUT /opinion" do
      let!(:opinion) { create(:opinion)}
      let(:updated_opinion){content:'updated content'}

      before(:each) do
        put :update, id: opinion.id, opinion: updated_opinion
        opinion.reload
      end 

      it { expect(@opinion.content).to eql updated_opinion[:content]} 
  end  



    def perform
     post :create, :params => {opinion: {content: "test"}}
    end
end 