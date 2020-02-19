class CreateDestinationSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :destination_schedules do |t|

      t.timestamps
    end
  end
end
