module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryBot.build(:user)
      user.confirm
      sign_in user
    end
  end
  def create_opinion
    opinion = FactoryBot.create(:opinion, user: user)
  end 
end