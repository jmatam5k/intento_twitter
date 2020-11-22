class CreateTweeeets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweeeets do |t|
      t.text :tweeeet

      t.timestamps
    end
  end
end
