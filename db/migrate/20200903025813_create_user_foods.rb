class CreateUserFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :user_foods do |t|
      t.integer :user_id
      t.integer :food_id
      t.date :purchased
      t.datetime :posted
      t.date :expiry
      t.float :weight_in_ounces

      t.timestamps
    end
  end
end
