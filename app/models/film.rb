class Film < Account

  def self.refresh_data
    @tweet_films = tweets.search("-filter:retweets filter:safe lang:en theater OR movies OR film OR actress OR actor OR cinema #blacktwitter",since_id: maximum(:tweet_id))
    @tweet_films_different = tweets.search("-filter:retweets filter:safe lang:en theater OR movies OR film OR actress OR actor OR cinema #blacknews", since_id: maximum(:tweet_id))

     @tweet_films.each do |tweet|
       create!(
       tweet_id: tweet.id,
       tweet_url: tweet.url,
       content: tweet.text,
       published_at: tweet.created_at,
       filmtype: "film"
       )
     end


      @tweet_films_different.each do |tweet|
        create!(
        tweet_id: tweet.id,
        tweet_url: tweet.url,
        content: tweet.text,
        published_at: tweet.created_at,
        filmtype: "filmsearch"
        )
      end
    end


end
