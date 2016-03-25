class FilmController < ApplicationController

  def index
    @tweet_films_different = Film.where(filmtype: "filmsearch").order('published_at DESC').paginate(page: params[:page], per_page: 16)
    @tweet_films = Film.where(filmtype: "film").paginate(page: params[:page], per_page: 16)
   #  paginate is always at the end of order statement
  end

end
