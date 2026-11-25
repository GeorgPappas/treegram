class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]

    if @comment.save
      flash[:notice] = "Comment added!"
    else
      flash[:alert] = "Could not add comment."
    end

    redirect_to :back
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user_id == session[:user_id] || @comment.photo.user_id == session[:user_id]
      @comment.destroy
      flash[:notice] = "Comment deleted."
    end
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :photo_id)
  end
end