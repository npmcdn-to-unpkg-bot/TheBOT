class PoliticsController < ApplicationController

  def index
    @tweet_politics = Politic.order('published_at DESC').paginate(page: params[:page], per_page: 16)
  end
end
