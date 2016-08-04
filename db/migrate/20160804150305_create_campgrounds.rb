class CreateCampgrounds < ActiveRecord::Migration
  def change
    create_table :campgrounds do |t|
      t.string :name
      t.string :url
      t.text :description

      t.timestamps null: false
    end
  end
end
