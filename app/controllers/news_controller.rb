class NewsController < ApplicationController

  def index
     @tweet_news = Newstweet.order('published_at DESC').paginate(page: params[:page], per_page: 16)
     @tweet_updates = Newstweet.order('published_at DESC').paginate(page: params[:page], per_page: 16)
  end

end
