class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|

      t.string :title

      t.string :photo_url

      t.integer :prize_id

      t.integer :user_id


      t.timestamps

    end

  end
end
