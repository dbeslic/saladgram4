class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :chat
  has_many :likes, :dependent => :destroy
  has_many :props, :dependent => :destroy
  has_many :shoutouts, :dependent => :destroy

  validates :user_id, :presence => true
  validates :chat_id, :presence => true
  validates :photo_url, :presence => true
  validates :photo_url, :presence => true

  mount_uploader :photo_url, PhotoUrlUploader

end
