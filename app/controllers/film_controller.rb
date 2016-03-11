class FilmController < ApplicationController

  def index
    @tweet_films = Film.all
  end

end
