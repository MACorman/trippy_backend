class AddTimeToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :time, :datetime
  end
end
