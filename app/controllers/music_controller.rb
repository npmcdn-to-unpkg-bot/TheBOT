class MusicController < ApplicationController
  def index
    #  @tweet_music = Music.all
     @tweet_music = Music.order('published_at DESC').paginate(page: params[:page], per_page: 16)
    #  paginate is always at the end of order statement
  end

end
