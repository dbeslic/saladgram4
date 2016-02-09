class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|

      t.integer :user_id

      t.string :photo_url

      t.string :caption


      t.timestamps

    end

  end
end
