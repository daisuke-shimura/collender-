class CommentController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    comment.week_id = Week.find(params[:week_id])
    #comment.event_id = 
    comment.save
    redirect_to request.referer
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
