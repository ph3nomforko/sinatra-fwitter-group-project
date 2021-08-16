class User < ActiveRecord::Base
  include Slugable::InstanceMethods
  validates_presence_of :username, :email, :password

  has_secure_password
  has_many :tweets

  def self.find_by_slug(slug)
    self.all.find do |i|
      i.slug == slug
    end
  end
  
end
