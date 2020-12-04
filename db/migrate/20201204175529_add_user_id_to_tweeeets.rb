class AddUserIdToTweeeets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweeeets, :user_id, :integer
  end
end
