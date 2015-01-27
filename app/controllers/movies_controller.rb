class MoviesController < ApplicationController
  def all
    @movies = Movie.all
    render json: @movies
  end

  def search
    @movies = Movie.search(params[:t], params[:y])
    render json: @movies
  end

end
