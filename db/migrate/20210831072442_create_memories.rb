class CreateMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :memories do |t|
      t.timestamps
      t.date :date
      t.string :text
      t.string :range
      t.string :time
      t.bigint :done
      t.references :user, foreign_key: true,  null: false
    end
  end
end
