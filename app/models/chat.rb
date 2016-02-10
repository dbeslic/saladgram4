class Chat < ActiveRecord::Base

  belongs_to :user
  has_many  :participants, :through => :connections, :source => :user

# Note: user is the administrator. participants is the many-to-many link to all the chat users

  has_many :posts, :dependent => :destroy
  has_many :messages, :dependent => :destroy

# One prize per chat

  belongs_to :prize


end
