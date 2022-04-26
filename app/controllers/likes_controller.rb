class LikesController < ApplicationController
  # route: POST /places/:place_id/likes
  def create
    @place = Place.find(params[:place_id])
    @like = Like.new(user: current_user, reference: @place)

    if @like.save
      redirect_to place_path(@place), notice: "Liked"
    else
      redirect_to place_path(@place), error: "Not Liked"
    end
  end

  # route: DELETE /places/:place_id/likes/:id
  def destroy
    @place = Place.find(params[:place_id])
    @like = current_user.likes.find(params[:id])

    if @like.destroy
      redirect_to place_path(@place), notice: "Not Liked"
    else
      redirect_to place_path(@place), error: "Not Not Liked"
    end
  end
end
