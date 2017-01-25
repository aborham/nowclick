class AddMessageToCoupon < ActiveRecord::Migration[5.0]
  def change
    add_column :coupons, :message, :string
  end
end
