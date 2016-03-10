class Newstweet < ActiveRecord::Base

  # def index
  #   tweet = NewsController.new.tweets
  #   # @tweet_news = tweet.search("-filter:retweets -filter:media filter:safe lang:en news #blacktwitter")
  #   # @tweet_updates = tweet.search("-filter:retweets -filter:media filter:safe lang:en update #blacktwitter")
  #   # @tweet_news_part_2 = tweet.search("-filter:retweets -filter:media filter:safe lang:en news #blacknews")
  #   index.search("-filter:retweets -filter:media filter:safe lang:en news #blacktwitter").each do |tweet|
  #      @tweet_news.each do |tweet|
  #       <blockquote class="twitter-tweet"
  #         data-link-color="#55acee" lang="es">
  #         <!-- <p><%= tweet.text %></p> -->
  #         <a href= "<%= tweet.url %>"></a>
  #       </blockquote>
  #   end
  # end
  #
  # def tweets
  #   # PUT THIS IN OWN SEPERATE METHOD CALLED BY DIFFERENT METHODS FOR CONTROLLER
  #     Twitter::REST::Client.new do |config|
  #     config.consumer_key        = ENV["CONSUMER_KEY"]
  #     config.consumer_secret     = ENV["CONSUMER_SECRET"]
  #     config.access_token        = ENV["ACCESS_TOKEN"]
  #     config.access_token_secret = ENV["ACCESS_SECRET"]
  #   end
  # end

end
