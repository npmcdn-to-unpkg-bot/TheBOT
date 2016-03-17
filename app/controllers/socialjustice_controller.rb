class SocialjusticeController < ApplicationController

  def index
    @tweet_sj = Socialjustice.order('created_at DESC').paginate(page: params[:page], per_page: 15)
    @tweet_blm = Socialjustice.order('created_at DESC').paginate(page: params[:page], per_page: 15)
   #  paginate is always at the end of order statement
  end

end
