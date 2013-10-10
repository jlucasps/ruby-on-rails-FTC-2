require 'spec_helper'


describe UsersController do 

  let(:user_bart) {FactoryGirl.find_or_create(:user_bart)}
  before(:each) do
    sign_in user_bart  
  end

  describe 'GET index' do
    
    it 'assigns @users' do 
      saved_users = [FactoryGirl.find_or_create(:user_bart), FactoryGirl.find_or_create(:user_lisa)]

      get :index
      assigns(:users).should eq(saved_users)

    end

  end

end
