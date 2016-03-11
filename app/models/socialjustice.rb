class Socialjustice < ActiveRecord::Base

  def self.index
    @tweet_sj = tweet.search("-filter:retweets -filter:media filter:safe lang:en 'social justice' #blacktwitter")
    @tweet_blm = tweet.search("-filter:retweets -filter:media filter:safe lang:en update #blacklivesmatter")

     @tweet_sj.each do |tweet|
       create!(
       tweet_id: tweet.id,
       tweet_url: tweet.url,
       content: tweet.text,
       )
     end

    @tweet_blm.each do |tweet|
      create!(
      tweet_id: tweet.id,
      tweet_url: tweet.url,
      content: tweet.text,
      )
    end
    
  end
end
