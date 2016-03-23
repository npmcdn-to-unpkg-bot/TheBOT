class NewsController < ApplicationController

  def index
    @tweet_news = Newstweet.where(politype: "news").order('published_at DESC').paginate(page: params[:page], per_page: 16)
    @tweet_updates = Newstweet.where(politype: "updates").order('published_at DESC').paginate(page: params[:page], per_page: 16)
  end

end
