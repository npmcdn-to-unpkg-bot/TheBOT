class NewsController < ApplicationController

  def index
     tweet = NewsController.new.tweets
     @tweets = tweet.search("-filter:retweets -filter:media filter:safe lang:en news #blacktwitter")
  end

  def tweets
    # PUT THIS IN OWN SEPERATE METHOD CALLED BY DIFFERENT METHODS FOR CONTROLLER
      Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_SECRET"]
    end
  end


end
