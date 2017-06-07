class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :drug
      t.integer :user_id
      t.string :notes

      t.timestamps

    end
  end
end
