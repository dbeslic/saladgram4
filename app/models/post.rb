class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :chat
  has_many :likes, :dependent => :destroy
  has_many :props, :dependent => :destroy
  has_many :shoutouts, :dependent => :destroy

end
