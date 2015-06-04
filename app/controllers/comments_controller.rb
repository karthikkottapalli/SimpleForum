class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @parent = Comment.find(params[:param1])
    @comment = @parent.children.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params.require(:comment).permit(:body, :ancestry))
    @comment.save

    redirect_to @post
  end
end
