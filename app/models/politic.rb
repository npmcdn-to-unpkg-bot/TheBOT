class Politic < Account
 def self.refresh_data
  @tweet_politics = tweets.search("-filter:retweets  filter:safe lang:en  mayor")
  @tweet_donald = tweets.search("-filter:retweets -filter:media filter:safe lang:en 'donald trump' #blacktwitter")
  @tweet_hillary = tweets.search("-filter:retweets -filter:media filter:safe lang:en 'hillary clinton' #blacknews")
    # index.search("-filter:retweets -filter:media filter:safe lang:en news #blacktwitter").each do |tweet|
   @tweet_politics.each do |tweet|
     create!(
     tweet_id: tweet.id,
     tweet_url: tweet.url,
     content: tweet.text,
     )
   end

   @tweet_donald.each do |tweet|
     create!(
     tweet_id: tweet.id,
     tweet_url: tweet.url,
     content: tweet.text,
     )
   end

   @tweet_hillary.each do |tweet|
     create!(
     tweet_id: tweet.id,
     tweet_url: tweet.url,
     content: tweet.text,
     )
   end
 end
end
