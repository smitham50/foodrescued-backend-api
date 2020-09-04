class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :address
      t.string :city
      t.string :stateInits
      t.integer :zip

      t.timestamps
    end
  end
end