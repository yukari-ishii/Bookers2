class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def create
    
  end
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

end
