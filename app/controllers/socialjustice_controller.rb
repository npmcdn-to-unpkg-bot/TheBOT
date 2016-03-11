class SocialjusticeController < ApplicationController

  def index
     @tweet_sj = Socialjustice.all
     @tweet_blm = Socialjustice.all
  end

end
