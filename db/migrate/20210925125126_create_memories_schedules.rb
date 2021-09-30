class CreateMemoriesSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :memories_schedules do |t|
      t.integer :schedule_id
      t.integer :memory_id
      t.timestamps
    end
  end
end
