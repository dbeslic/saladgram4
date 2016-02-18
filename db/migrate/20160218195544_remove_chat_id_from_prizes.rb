class RemoveChatIdFromPrizes < ActiveRecord::Migration
  def change
    remove_column :prizes, :chat_id, :integer
  end
end
