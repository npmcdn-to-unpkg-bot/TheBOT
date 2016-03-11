class SocialjusticeController < ApplicationController

    def index
       @tweet_sj = Socialjustice.all
    end
end
