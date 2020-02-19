class CreateDestinationSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :destination_schedules do |t|
      t.integer :destination_id
      t.integer :schedule_id
      t.timestamps
    end
  end
end
