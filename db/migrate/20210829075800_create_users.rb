class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, false
      t.string :email
      t.string :encrypted_password
      t.timestamps
    end
    add_index :users, :name, unique: true
  end
end
