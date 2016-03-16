class Music < Account

  def self.refresh_data
    # newest_tweets = tweets.find()
    @tweet_music = tweets.search("-filter:retweets -'services4Sale' filter:safe lang:en music OR rap OR hip-hop OR r&b OR pop OR rock&roll OR jazz OR reggae #blacktwitter", since_id: maximum(:tweet_id))
     @tweet_music.each do |tweet|
      #  if user_name == this
      # then don't save
      # else create below
       create!(
       tweet_id: tweet.id,
       tweet_url: tweet.url,
       content: tweet.text,
       )
      end
    end

 end
