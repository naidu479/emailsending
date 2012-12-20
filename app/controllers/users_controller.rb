class UsersController < ApplicationController

  def index
    @user = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def edit
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.registration_confirmation(@user).deliver
      redirect_to @user,:notice => 'User was Successfully Added!'
    else
      render :action => "new"
    end
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "User Successfully added!"
      redirect_to :action =>'show',:controller=>"login"
    else
      render action: "edit"
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to @user,:notice => "User successfully deleted!"
  end

end