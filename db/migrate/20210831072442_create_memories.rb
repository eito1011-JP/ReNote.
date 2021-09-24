class CreateMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :memories do |t|
      t.timestamps
      t.string :text
      t.string :range
      t.string :time
      t.integer :schedule
      t.bigint :done
      t.references :user, foreign_key: true,  null: false
    end
  end
end
