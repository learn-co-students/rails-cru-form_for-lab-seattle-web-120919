class SongsController < ApplicationController
  # index
  def index
    @songs = Song.all
  end

  # new
  def new
    @song = Song.new
  end

  # show
  def show
    @song = Song.find(params[:id])
  end

  # create
  def create
    song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(song)
  end

  # edit
  def edit
    @song = Song.find(params[:id])
  end

  # update
  def update
    song = Song.find(params[:id])
    song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(song)
  end
end
