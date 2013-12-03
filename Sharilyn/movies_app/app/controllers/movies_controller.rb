class MoviesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :find_movie, only: [:edit, :update, :show]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.create safe_movie
    if movie.save
      flash[:notice] = "Movie saved successfully"
      redirect_to movie
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @movie.update safe_movie
    redirect_to @movie
  end

  def show
#    @movie = Movie.find_by_id(:id)
  end

  private

  def find_movie
    @movie = Movie.find params[:id]
    end

  def safe_movie
    params.require(:movie).permit(:title, :description, :year_released, :rating)
  end

end

