class RemoveColumnsFromCoupons < ActiveRecord::Migration[5.0]
  def change
    remove_column :coupons, :description, :string
    remove_column :coupons, :type, :integer
    remove_column :coupons, :url, :string
    remove_attachment :coupons, :image
  end
end
