class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    head :unproccessable_entity unless @user.save
  end

  def edit
    render 'new'
  end

  def update
    head :unproccessable_entity unless @user.update(user_params)
  end

  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :surnames, :phone, :address, :image)
  end
end
