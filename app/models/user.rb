class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :groups, :through => :connections, :source => :chat
  has_many :followers, :through => :follows, :source => :user
  has_many :posts, :dependent => :destroy
  has_many :messages, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :shoutouts, :dependent => :destroy

  validates :user_name, :presence => true
  validates :avatar_url, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true

end
