class CommentsController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @comment = Comment.new(comments_params)

    if @comment.save
      redirect_to place_path(@place), notice: "Comment was created."
    else
      redirect_to place_path(@place), notice: "Comment could not be created."
    end
  end

  def update
  end

  private

  def comments_params
    params.require(:comment).permit(:content, :place_id, :user_id)
  end

end
