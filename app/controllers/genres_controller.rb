class GenresController < ApplicationController
  # index
  def index
    @genres = Genre.all
  end

  # new
  def new
    @genre = Genre.new
  end

  # show
  def show
    @genre = Genre.find(params[:id])
  end

  # create
  def create
    genre = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre_path(genre)
  end

  # edit
  def edit
    @genre = Genre.find(params[:id])
  end

  # update
  def update
    genre = Genre.find(params[:id])
    genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(genre)
  end
end
