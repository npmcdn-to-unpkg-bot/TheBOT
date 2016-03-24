class Politic < Account
 def self.refresh_data
  @tweet_politics = tweets.search("-filter:retweets filter:safe lang:en mayor OR election OR government OR governor OR politician OR senator #blacktwitter",since_id: maximum(:tweet_id))
  @tweet_donald = tweets.search("-filter:retweets -filter:media filter:safe lang:en 'donald trump' #blacktwitter",since_id: maximum(:tweet_id))
  @tweet_hillary = tweets.search("-filter:retweets -filter:media filter:safe lang:en 'hillary clinton' #blacknews", since_id: maximum(:tweet_id))
    # index.search("-filter:retweets -filter:media filter:safe lang:en news #blacktwitter").each do |tweet|
   @tweet_politics.each do |tweet|
     create!(
     tweet_id: tweet.id,
     tweet_url: tweet.url,
     content: tweet.text,
     published_at: tweet.created_at,
     politype: "generalpolitics"
     )
   end

   @tweet_donald.each do |tweet|
     create!(
     tweet_id: tweet.id,
     tweet_url: tweet.url,
     content: tweet.text,
     published_at: tweet.created_at,
     politype: "donald"
     )
   end

   @tweet_hillary.each do |tweet|
     create!(
     tweet_id: tweet.id,
     tweet_url: tweet.url,
     content: tweet.text,
     published_at: tweet.created_at,
     politype: "hillary"
     )
   end
 end
end
