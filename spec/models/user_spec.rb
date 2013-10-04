require 'spec_helper'


describe User do 
  
  it 'create an user' do
    user = User.new :name => 'João Lucas', 
                    :email => 'jlucasps@gmail.com', 
                    :age => 24,
                    :gender => User::MALE
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

  # NOVO 
  #------

  it 'creates an user with gender MALE' do 
    user = User.new :name => 'Bob Dylan',
                    :email => 'bob@dylan.com',
                    :age => 24,
                    :gender => User::MALE
    user.save.should be_true
  end

  it 'creates an user with gender FEMALE' do 
    user = User.new :name => 'Candice',
                    :email => 'candice@gmail.com',
                    :age => 24,
                    :gender => User::FEMALE
    user.save.should be_true
  end

  # Novo <<<<

  context "when age >= 18" do
    
    it 'creates an user with gender' do
      user = User.new :name => 'Joao Lucas',
                      :email => 'jlucasps@gmail.com',
                      :age => 18,
                      :gender => User::MALE
      user.save.should be_true
    end

    it 'does not creates an user without gender' do
      user = User.new :name => 'Joao Lucas',
                      :email => 'jlucasps@gmail.com',
                      :age => 18
      user.save.should be_false
    end

  end

  context "when age < 18" do
    it 'creates an user with gender' do
      user = User.new :name => 'Joao Lucas',
                      :email => 'jlucasps@gmail.com',
                      :age => 15,
                      :gender => User::MALE
      user.save.should be_true
    end

    it 'does not creates an user without gender' do
      user = User.new :name => 'Joao Lucas',
                      :email => 'jlucasps@gmail.com',
                      :age => 15
      user.save.should be_true
    end
  end

end