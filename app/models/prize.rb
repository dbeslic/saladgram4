class Prize < ActiveRecord::Base

  has_many :chats

  validates :name, :presence => true
  validates :picture_url, :presence => true
  validates :sponsor, :presence => true

end
