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
      it "deletes opinion" do 
        expect {delete_opinion}.to change(Opinion, :count).by(-1) 
      end
    end 
  end 
  describe "PUT /opinion" do 
    context "without logged user" do 
      it "fails to update opinion" do 
      expect { update }.to raise_error
      end
    end
    context "with logged user" do  
      login_user
      it " updates opinon" do 
        if(opinion.user == current_user)
          update
          expect { opinion.content }.to equal("new content")
        elsif (opinion.user != current_user)
          expect { update }.to raise_error
        end 
      end            
    end
  end  

    def perform
     post :create, :params => {opinion: {content: "test"}}
    end

     def delete_opinion
      opinion = Opinion.find_by(id: opinion.id)
      opinion.destroy
    end

    def update
      opinion = Opinion.find_by(id: opinion.id)
      put :update, :params => {opinion: {content: "new content"}}
      opinion.reload 
    end
end 
