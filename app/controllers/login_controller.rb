class LoginController < ApplicationController

  def new
    @user = User.new
  end
  def create
    user = User.authenticate(params[:email],params[:password])
    if user
      session[:user_id] = user.id
      redirect_to  :action =>'show', :status => 303
    else
      flash.now.alert = "Invalid email or password"
      render 'new'
    end
  end
  def show
    @user = User.all
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Log Out"
  end
  def edit
    @user = User.find(session[:user_id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to :action =>'login/show', :notice =>"User Successfully added!"
    else
      render 'login/edit'
    end
  end
end
