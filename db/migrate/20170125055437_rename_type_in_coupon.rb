class RenameTypeInCoupon < ActiveRecord::Migration[5.0]
  def change
    rename_column :coupons, :type, :content_type
  end
end
