class UsersController < ApplicationController
  before_action :authorize_admin, :only => [:admin]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "There was a problem signing up."
      render :new
    end
  end

  def admin
    @hikes = Hike.all
  end

  def show
    @account = Account.find(params[:id])
    @reviews = @account.reviews
  end

private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end

end
