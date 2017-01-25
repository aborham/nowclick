class AddTimestampsToBeacons < ActiveRecord::Migration[5.0]
  def change
    add_column(:beacons, :created_at, :datetime)
    add_column(:beacons, :updated_at, :datetime)
  end
end
