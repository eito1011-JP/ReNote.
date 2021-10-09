class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.date :schedule
      t.integer :memory_id
      t.integer :schedule_form
      t.timestamps

    end
  end
end
