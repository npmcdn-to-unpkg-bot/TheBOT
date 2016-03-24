class NewsController < ApplicationController

  def index
    @tweet_news = Newstweet.where(newstype: "news").order('published_at DESC').paginate(page: params[:page], per_page: 16)
    @tweet_updates = Newstweet.where(newstype: "updates").order('published_at DESC').paginate(page: params[:page], per_page: 16)
    @black_twitter = Newstweet.where(newstype: "blacktwitter").limit(1000).pluck(:content).join(" ")

    text = Newstweet.where(newstype: "blacktwitter").limit(1000).pluck(:content).join(" ")
    array = [
           "was","to", "co", "are", "t", "of", "k", "t", "l", "mn","is",
           "f", "s", "i", "this", "the", "you", "me", "is", "with", "y", "an",
           "it", "and", "a", "u", "tcot", "https", "we", "not",
           "just", "your", "do", "by", "in", "on", "what", "or",
           "so", "all", "d", "that's", "stop", "amp", "was", "white", "for", "p",
            "have", "blacknews", "n", "if", "about", "don't", "another", "man", "woman",
            "women", "now", "that", "matter", "over", "after", "being", "users", "keep",
            "like", "new", "my", "get", "-", "lzc"
         ]
    counter = WordsCounted.count(text, exclude:array)
    @token_counter = counter.token_frequency[1..25]

  end

end
