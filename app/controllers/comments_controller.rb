class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/worships/#{comment.worship.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, worship_id: params[:worship_id])
  end
end
