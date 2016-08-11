class AddUserIdToCampgrounds < ActiveRecord::Migration
  def change
    add_column :campgrounds, :user_id, :integer
  end
end
