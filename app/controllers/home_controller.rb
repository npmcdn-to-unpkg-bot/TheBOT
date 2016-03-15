class HomeController < ApplicationController
  # 
  # def tweets
  #   index.search("-filter:retweets -filter:media filter:safe lang:en news #blacktwitter").each do |tweet|
  #     return tweet.text
  #   end
  # end
  #
  # # def index
  # #   @tweets = TweetsController.new.tweets
  # # end
  #
  # def index
  #   # PUT THIS IN OWN SEPERATE METHOD CALLED BY DIFFERENT METHODS FOR CONTROLLER
  #     Twitter::REST::Client.new do |config|
  #     config.consumer_key        = ENV["CONSUMER_KEY"]
  #     config.consumer_secret     = ENV["CONSUMER_SECRET"]
  #     config.access_token        = ENV["ACCESS_TOKEN"]
  #     config.access_token_secret = ENV["ACCESS_SECRET"]
  #   end
  # end

end
