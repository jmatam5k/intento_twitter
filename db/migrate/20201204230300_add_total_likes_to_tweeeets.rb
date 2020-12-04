class AddTotalLikesToTweeeets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweeeets, :total_likes, :integer, default: 0
  end
end
