class Session < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    Session.create!(
    :provider => auth["provider"],
    :uid => auth["uid"],
    :name => auth["info"]["name"],
    :image => auth["info"]["image"] )
  end
end

