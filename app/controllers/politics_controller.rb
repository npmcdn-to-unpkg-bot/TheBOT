class PoliticsController < ApplicationController

  def index
       @tweet_politics = Politic.all
  end
end
