class FilmController < ApplicationController

  def index
    @tweet_films = Film.order("created_at DESC")
    @tweet_films_different = Film.order("created_at DESC")
  end

end
