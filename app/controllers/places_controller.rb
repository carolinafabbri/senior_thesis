class PlacesController < ApplicationController

PLACES_PER_PAGE = 4

  def index
    @filter = params[:filter]
    @places = Place.paginate(page: params[:page], per_page: PLACES_PER_PAGE).joins(:tags).where(tags: { name: @filter })
    # params[:filter] => "coffee"
  end

  def show
    @place = Place.find(params[:id])
  end
end
