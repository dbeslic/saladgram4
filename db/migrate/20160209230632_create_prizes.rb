class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|

      t.string :name

      t.string :picture_url

      t.string :sponsor

      t.integer :chat_id


      t.timestamps

    end

  end
end
