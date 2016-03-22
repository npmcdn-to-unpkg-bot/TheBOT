class PoliticsController < ApplicationController

  def index
    @tweet_politics = Politic.where(politype: "generalpolitics").order('published_at DESC').paginate(page: params[:page], per_page: 16)
    @tweet_donald = Politic.where(politype: "donald").order('published_at DESC').paginate(page: params[:page], per_page: 16)
    @tweet_hillary = Politic.where(politype: "hillary").order('published_at DESC').paginate(page: params[:page], per_page: 16)
  end


end
