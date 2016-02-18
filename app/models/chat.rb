class Chat < ActiveRecord::Base

  belongs_to :user
  has_many  :participants, :through => :connections, :source => :user
  has_many :connections, :dependent => :destroy

# Note: user is the administrator. participants is the many-to-many link to all the chat users
  has_many :posts, :dependent => :destroy
  has_many :messages, :dependent => :destroy

# One prize per chat
  belongs_to :prize

  validates :title, :presence => true
  validates :photo_url, :presence => true
  validates :user_id, :presence => true

end
