class CreateProps < ActiveRecord::Migration
  def change
    create_table :props do |t|

      t.integer :post_id

      t.string :comment


      t.timestamps

    end

  end
end
