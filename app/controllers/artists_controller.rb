class ArtistsController < ApplicationController
  # index
  def index
    @artists = Artist.all
  end

  # new
  def new
    @artist = Artist.new
  end

  # show
  def show
    @artist = Artist.find(params[:id])
  end

  # create
  def create
    artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(artist)
  end

  # edit
  def edit
    @artist = Artist.find(params[:id])
  end

  # update
  def update
    artist = Artist.find(params[:id])
    artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path(artist)
  end
end
