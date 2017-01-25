class CreateBeacons < ActiveRecord::Migration[5.0]
  def change
    create_table :beacons do |t|
      t.string :name
      t.string :description
      t.integer :major
      t.integer :minor
      t.string :uuid
      t.boolean :enabled, null: false, default: true
    end
  end
end
