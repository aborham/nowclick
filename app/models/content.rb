class Content < ApplicationRecord
  has_many :coupons
  has_many :beacons, through: :coupons
  validates :name, :content_type, presence: true
  validates_uniqueness_of :name
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # add a delete_image method:
  attr_accessor :delete_image
  before_validation { self.image.clear if self.delete_image == '1' }

  enum content_type: { plain_text:0, url: 1, image: 2 }

  rails_admin do

    create do
      field :name
      field :description
      field :content_type
      field :message
      field :url
      field :image
    end
  end

end
