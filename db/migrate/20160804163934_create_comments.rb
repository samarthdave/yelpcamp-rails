class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :campground_id
      t.string :data

      t.timestamps null: false
    end
  end
end
