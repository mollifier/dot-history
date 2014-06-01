class User < ActiveRecord::Base
  devise :omniauthable, :omniauth_providers => [:twitter]

  validates :name,
    presence: true

  validates :provider,
    presence: true

  validates :uid,
    presence: true

  def self.find_for_twitter_oauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.save!
    end
  end

end
