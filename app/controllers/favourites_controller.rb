class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all.where(user: current_user)
  end

  def create
    @favourite = Favourite.new
    @exhibit = Exhibit.find(params[:exhibit_id])
    @favourite.exhibit = @exhibit
    @favourite.user = current_user

    if @favourite.save
      redirect_back(fallback: '/exhibits')
    else
      render 'exhibits/index'
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_back(fallback: '/exhibits')
  end
end
