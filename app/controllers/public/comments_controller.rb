class Public::CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to post_path(@comment.post.id)
  end

  def update
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :user_id, :text)
  end
end