class Message < ActiveRecord::Base

  belongs_to :user
  belongs_to :chat

# Note: Message is similar to a post, but does not have functionalities: Like, Shoutout, Prop

  validates :post_id, :presence => true
  validates :user_id, :presence => true

end
