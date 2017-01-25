class AddCouponIdToBeacon < ActiveRecord::Migration[5.0]
  def change
    add_column :beacons, :coupon_id, :integer
  end
end
