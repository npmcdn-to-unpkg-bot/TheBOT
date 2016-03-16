class MusicController < ApplicationController
  def index
     @tweet_music = Music.all
    #  @tweet_content = Music.all[1].content

  #    counts = Hash.new
  #
  #    @tweet_content.each do |word|
  #      counts[word] += 1
  #    end
  # end
  end

end
