class Newstweet < Account

  def self.refresh_data
    @tweet_news = tweets.search("-filter:retweets  filter:safe lang:en news #blacktwitter")
    @tweet_updates = tweets.search("-filter:retweets -filter:media filter:safe lang:en update #blacktwitter")
    @tweet_news_part_2 = tweets.search("-filter:retweets -filter:media filter:safe lang:en news #blacknews")
    # index.search("-filter:retweets -filter:media filter:safe lang:en news #blacktwitter").each do |tweet|
       @tweet_news.each do |tweet|
         create!(
         tweet_id: tweet.id,
         tweet_url: tweet.url,
         content: tweet.text,
         )

  
       end

       @tweet_updates.each do |tweet|
         create!(
         tweet_id: tweet.id,
         tweet_url: tweet.url,
         content: tweet.text,
         )
       end

    end

end
