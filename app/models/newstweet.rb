class Newstweet < Account

  require 'json'

  def self.refresh_data
    @tweet_news = tweets.search("-filter:retweets  filter:safe lang:en news #blacktwitter", since_id: maximum(:tweet_id))
    @tweet_updates = tweets.search("-filter:retweets -filter:media filter:safe lang:en update #blacktwitter",since_id: maximum(:tweet_id))
    @tweet_news_part_2 = tweets.search("-filter:retweets -filter:media filter:safe lang:en news #blacknews", since_id: maximum(:tweet_id))
    @black_twitter = tweets.search("-filter:retweets -filter:media filter:safe lang:en #blacktwitter", since_id: maximum(:tweet_id))
    # index.search("-filter:retweets -filter:media filter:safe lang:en news #blacktwitter").each do |tweet|
       @tweet_news.each do |tweet|
         create!(
         tweet_id: tweet.id,
         tweet_url: tweet.url,
         content: tweet.text,
         published_at: tweet.created_at,
         newstype: "news"
         )
       end
       @tweet_updates.each do |tweet|
         create!(
         tweet_id: tweet.id,
         tweet_url: tweet.url,
         content: tweet.text,
         published_at: tweet.created_at,
         newstype:"updates"
         )
       end

       @black_twitter.each do |tweet|
         create!(
         tweet_id: tweet.id,
         tweet_url: tweet.url,
         content: tweet.text,
         published_at: tweet.created_at,
         newstype:"blacktwitter"
         )
       end



       render json:{ :token_counter => @token_counter,

       }



    end

end
