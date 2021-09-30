class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.integer :schedule
      t.timestamps
      
    end
  end
end
