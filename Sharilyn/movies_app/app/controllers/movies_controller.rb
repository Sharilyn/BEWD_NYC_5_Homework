class MoviesController < ApplicationController

  before_action :find_movie, only: [:edit, :update, :show]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.create safe_movie
    redirect_to movie
  end

  def edit
  end

  def update
    @movie.update safe_movie
    redirect_to @movie

  end

  def show
    
  end

  private

  def find_movie
    @movie = Movie.find params[:id]
    end

  def safe_movie
    params.require(:movie).permit(:title, :description, :year_released, :rating)
  end

end

