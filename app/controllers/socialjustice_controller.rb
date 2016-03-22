class SocialjusticeController < ApplicationController

  def index
    @tweet_blm = Socialjustice.where(socialtype: "blacklivesmatter").order('published_at DESC').paginate(page: params[:page], per_page: 16)
    @tweet_sj = Socialjustice.where(socialtype: "socialjustice").order('published_at DESC').paginate(page: params[:page], per_page: 16)
   #  paginate is always at the end of order statement
  end

end
