class Coupon < ApplicationRecord

  validates_uniqueness_of :name
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  # add a delete_image method:
  attr_accessor :delete_image
  before_validation { self.image.clear if self.delete_image == '1' }

  enum trigger: { immediate: 0, near: 1, far: 2 }
  enum type: { text:0, url: 1, image: 2 }

end
