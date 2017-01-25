class CreateContentTable < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :name
      t.text :description
      t.integer :content_type, null: false, default: 0
      t.text :message
      t.string :url
      t.attachment :image

      t.timestamps
    end
  end
end
