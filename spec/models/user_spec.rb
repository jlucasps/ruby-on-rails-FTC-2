require 'spec_helper'


describe User do 
  
  it 'create an user' do

    user = User.new :name => 'João Lucas', :email => 'jlucasps@gmail.com', :age => 24

    user.save.should be_true
  end

end