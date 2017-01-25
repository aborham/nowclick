class Coupon < ApplicationRecord
  belongs_to :beacon
  belongs_to :content
  validates :trigger, :content , :beacon, :name, :presence => true
  validates_uniqueness_of :trigger , scope: [:beacon, :content]
  validates_uniqueness_of :name

  enum trigger: { immediate: 0, near: 1, far: 2 }
end
