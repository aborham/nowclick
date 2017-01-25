class Beacon < ApplicationRecord
  belongs_to :coupon
  validates :name,:major,:minor, presence: true
  validates_uniqueness_of :name


  scope :by_major_minor, ->(major,minor) {where("major IN (?) AND minor IN (?)",major,minor)}
end
