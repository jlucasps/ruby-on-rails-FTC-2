
class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @comment.commentable_type = params[:commentable_type]
    @comment.commentable_id = params[:commentable_id]
  end


  def create
    @comment = Comment.new(comment_params)
    @comment.save
  end




private

  def comment_params
    params.require(:comment).permit(:content, :commentable_id, :commentable_type)
  end
end

