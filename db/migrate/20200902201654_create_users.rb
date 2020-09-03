class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.datetime :created_on
      t.datetime :last_login

      t.timestamps
    end
  end
end
