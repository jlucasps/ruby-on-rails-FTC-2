class WelcomeController < ApplicationController


  before_filter :authenticate_user!, except: [:index, :black, :about]


  layout 'application_black', :only => [:black]

  def index
    @name = 'João Lucas'
    #debugger
  end

  def black   
   
  end


  def about
  
  end


end