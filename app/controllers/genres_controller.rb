class GenresController < ApplicationController
  def create
    Genre.create(genre_params)
  end

  def show
    @genre = Genre.find(params[:id])
    @posts = @genre.posts
  end

  private
  def genre_params
    params.permit(:name)
  end
end
