class FollowsController < ApplicationController
  def create
    @current_user = User.find(session[:user_id])
    @followed_user = User.find(params[:followed_id])

    unless @current_user.followed_users.include?(@followed_user)
      Follow.create(follower_id: @current_user.id, followed_id: @followed_user.id)
      flash[:notice] = "You are now following #{@followed_user.email}"
    end

    redirect_to :back
  end

  def destroy
    @follow = Follow.find(params[:id])
    @follow.destroy
    flash[:notice] = "Unfollowed user."
    redirect_to :back
  end
end