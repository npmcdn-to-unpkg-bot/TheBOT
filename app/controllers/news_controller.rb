class NewsController < ApplicationController

  def index
     @tweet_news = Newstweet.all
     @tweet_updates = Newstweet.all
  end

end
