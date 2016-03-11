class NewsController < ApplicationController

  def index
     @tweet_news = Newstweet.all
  end





end
