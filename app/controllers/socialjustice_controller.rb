class SocialjusticeController < ApplicationController

  def index
    @tweet_sj = Socialjustice.order('published_at DESC').paginate(page: params[:page], per_page: 16)
    @tweet_blm = Socialjustice.order('published_at DESC').paginate(page: params[:page], per_page: 16)
   #  paginate is always at the end of order statement
  end

end
