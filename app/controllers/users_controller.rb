class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.valid?
    if !@user.is_email?
      flash[:alert] = "Input a properly formatted email."
      redirect_to :back
    elsif @user.errors.messages[:email] != nil
      flash[:notice]= "That email " + @user.errors.messages[:email].first
      redirect_to :back
    elsif @user.save
      flash[:notice]= "Signup successful. Welcome to the site!"
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:alert] = "There was a problem creating your account. Please try again."
      redirect_to :back
    end
  end
	
  def index
    @users = User.all
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def new
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
    @tag = Tag.new
    @comment = Comment.new

    user_ids = @user.followed_user_ids + [@user.id]
    @photos = Photo.where(user_id: user_ids).order(created_at: :desc)
  end

  def destroy
    @user = User.find(params[:id])
    if @user.id == session[:user_id]
      @user.destroy
      session[:user_id] = nil
      flash[:notice] = "Account deleted successfully."
      redirect_to '/'
    else
      flash[:alert] = "You can only delete your own account."
      redirect_to :back
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
  end


end
