class User < ActiveRecord::Base
  validates :email, :username, :uid, :provider, presence: true

  def self.find_or_create_from_omniauth(auth_hash)
     user = where(provider: auth_hash[:provider], uid: auth_hash[:uid].first_or_create)
     user.update(
     name: auth_hash[:info][:name],
     profile_image: auth_hash[:info][:image],
     token: auth_hash.credentials.token,
     secret: auth_hash.credentials.secret
     )
     user
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
