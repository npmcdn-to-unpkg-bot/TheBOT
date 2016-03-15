class FilmController < ApplicationController

  def index
    @tweet_films = Film.all
    @tweet_films_different = Film.all
  end

end
