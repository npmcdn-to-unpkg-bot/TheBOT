class Socialjustice < Account

  def self.refresh_data
    @tweet_sj = tweets.search(" -filter:retweets -'BlackLiesMatter' -filter:media filter:safe lang:en 'social justice' #blacktwitter",since_id: maximum(:tweet_id))
    @tweet_blm = tweets.search("-filter:retweets -filter:media filter:safe lang:en update #blacklivesmatter",since_id: maximum(:tweet_id))

     @tweet_sj.each do |tweet|
       create!(
       tweet_id: tweet.id,
       tweet_url: tweet.url,
       content: tweet.text,
       published_at: tweet.created_at,
       socialtype: "socialjustice"
       )
     end

    @tweet_blm.each do |tweet|
      create!(
      tweet_id: tweet.id,
      tweet_url: tweet.url,
      content: tweet.text,
      published_at: tweet.created_at,
      socialtype: "blacklivesmatter"
      )
    end
  end

end
