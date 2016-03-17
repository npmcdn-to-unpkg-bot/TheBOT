class MusicController < ApplicationController
  def index
    #  @tweet_music = Music.all
     @tweet_music = Music.order('created_at DESC').paginate(page: params[:page], per_page: 15)
    #  paginate is always at the end of order statement
  end

end
