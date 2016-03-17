class NewsController < ApplicationController

  def index
     @tweet_news = Newstweet.order('created_at DESC').paginate(page: params[:page], per_page: 15)
     @tweet_updates = Newstweet.order('created_at DESC').paginate(page: params[:page], per_page: 15)
  end

end
