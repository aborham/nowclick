class AddContentAndBeaconsToCoupons < ActiveRecord::Migration[5.0]
  def change
    add_reference :coupons, :beacon, foreign_key: true
    add_reference :coupons, :content, foreign_key: true
  end
end
