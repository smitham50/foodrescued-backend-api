class CreateUserAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_addresses do |t|
      t.integer :user_id
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.datetime :created_on

      t.timestamps
    end
  end
end
