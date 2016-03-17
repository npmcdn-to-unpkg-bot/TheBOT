class PoliticsController < ApplicationController

  def index
    @tweet_politics = Politic.order('created_at DESC').paginate(page: params[:page], per_page: 15)
  end
end
