require 'spec_helper'


describe User do 
  
  it 'create an user' do
    user = User.new :name => 'João Lucas', :email => 'jlucasps@gmail.com', :age => 24
    user.save.should be_true
  end


  it 'fail to create an user when name is blank' do 
    user = User.new :email => 'jlucasps@gmail.com', :age => 24
    user.save.should be_false
  end


  it 'fail to create an user when email is blank' do 
    user = User.new :name => 'João Lucas', :age => 24
    user.save.should be_false
  end

end