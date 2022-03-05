class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comments_params)

    @comment.post_id = @post.id

    if @comment.save
      redirect_to post_path(@post), notice: 'Comment was created.'
    else
      redirect_to post_path(@post), alert: 'Comment could not be created.'
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:body, :commenter_name)
  end
end
