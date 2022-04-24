class LikesController < ApplicationController

  def create
    params[:like][:user_id] = current_user.id
    @like = Like.new(like_params)
    # do I need a message from when liking or just add count?
  end




  def destroy
  @like = current_user.likes.find(params[:id])
  @like.destroy
  end

end
