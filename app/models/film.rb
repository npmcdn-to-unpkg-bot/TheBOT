class Film < Account
  def self.refresh_data
    @tweet_films = tweets.search("-filter:retweets filter:safe lang:en theater OR movies OR film OR actress OR actor OR cinema #blacktwitter")
     @tweet_films.each do |tweet|
       create!(
       tweet_id: tweet.id,
       tweet_url: tweet.url,
       content: tweet.text,
       )
     end
   end
end
