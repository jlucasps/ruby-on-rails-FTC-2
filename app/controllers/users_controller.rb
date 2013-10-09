class UsersController < ApplicationController


  def index
    @users = User.all

  end


  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Usuário criado'
      redirect_to user_path(@user)
    else
      render :action => :new  
    end
  end

  def show
    @user = User.find(params[:id])
  end


  def edit
    @user = User.find(params[:id])
  end

  def update 
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = 'Usuário atualizado'
      redirect_to @user
    else
      render :action => :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    flash[:notice] = (@user.destroy ? 'Usuário excluiído' : 'Falha na exclusão')
    redirect_to users_path
  end



private

  def user_params
    params.require(:user).permit(:name, :email, :age, :gender)
  end

end
