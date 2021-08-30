class CreateMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :memories do |t|
      t.timestamps
      t.string :text
      t.string :range
      t.string :time
      t.integer :schedule
    end
  end
end
