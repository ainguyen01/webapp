class CreateCopays < ActiveRecord::Migration[5.0]
  def change
    create_table :copays do |t|
      t.string :name
      t.string :pay_as_little_as
      t.string :max_saving
      t.string :cap
      t.string :url
      t.integer :user_id

      t.timestamps

    end
  end
end
