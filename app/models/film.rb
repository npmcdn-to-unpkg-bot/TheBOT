class Film < Account

  def self.refresh_data
    @tweet_films = tweets.search("-filter:retweets filter:safe lang:en theater OR movies OR film OR actress OR actor OR cinema #blacktwitter",:result_type => "recent")
     @tweet_films.each do |tweet|
       create!(
       tweet_id: tweet.id,
       tweet_url: tweet.url,
       content: tweet.text,
       published_at: tweet.created_at
       )
     end
   end

   def self.refresh_data_different
     @tweet_films_different = tweets.search("-filter:retweets filter:safe lang:en theater OR movies OR film OR actress OR actor OR cinema #blacknews", :result_type => "recent")
      @tweet_films_different.each do |tweet|
        create!(
        tweet_id: tweet.id,
        tweet_url: tweet.url,
        content: tweet.text,
        published_at: tweet.created_at
        )
      end
    end


end
