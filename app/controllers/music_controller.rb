class MusicController < ApplicationController
  def index
     @tweet_music = Music.all
  end
end
