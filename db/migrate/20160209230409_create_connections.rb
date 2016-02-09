class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|

      t.integer :chat_id

      t.integer :user_id


      t.timestamps

    end

  end
end
