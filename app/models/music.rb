class Music < Account

  def self.refresh_data
    newest_tweets = tweets.find()


    @tweet_music = tweets.search("-filter:retweets filter:safe lang:en music OR rap OR hip-hop OR r&b OR pop OR funk OR rock&roll OR jazz OR reggae #blacktwitter")
     @tweet_music.each do |tweet|
       create!(
       tweet_id: tweet.id,
       tweet_url: tweet.url,
       content: tweet.text,
       )
     end
   end





  #  newest_tweets = Mongo.collection.find({"module": "Influx"}).sort("published_at", pymongo.DESCENDING)
  #          if newest_tweets.count() > 0:
  #              since_id = newest_tweets[0]["tweet_id"]
  #          else:
  #              since_id = None

end
