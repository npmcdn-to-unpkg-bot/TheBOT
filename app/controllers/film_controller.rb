class FilmController < ApplicationController

  def index
    @tweet_films_different = Film.order('created_at DESC').paginate(page: params[:page], per_page: 15)
    @tweet_films = Film.order('created_at DESC').paginate(page: params[:page], per_page: 15)
   #  paginate is always at the end of order statement
  end

end
