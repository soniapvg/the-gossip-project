class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      user_params(
        :first_name,
        :last_name,
        :description,
        :email,
        :age,
        :city
      )
    )

    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @user.update_attribute(
      user_params(
        :first_name,
        :last_name,
        :description,
        :email,
        :age,
        :city
      )
    )

    if @user.save
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end

  def set_user
    @user = User.find(params[:id])
  end
end