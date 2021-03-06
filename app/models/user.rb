class User < ActiveRecord::Base
  validates :username, :uid, :provider, presence: true

  def self.find_or_create_from_omniauth(auth_hash)
     user = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
     user.update(
     username: auth_hash.info.name,
     avatar_url: auth_hash.info.image,
     token: auth_hash.credentials.token,
     secret: auth_hash.credentials.secret
     )
     user
  end

  def tweet(body)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = self.token
      config.access_token_secret = self.secret
    end
    client.update(body)
  end

end
