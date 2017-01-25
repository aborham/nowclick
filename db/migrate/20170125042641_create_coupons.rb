class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :description
      t.integer :type, null: false, default: 0
      t.string :url
      t.integer :trigger, null: false, default: 0
      t.attachment :image

      t.timestamps
    end
  end
end
