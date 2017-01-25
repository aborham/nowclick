class Beacon < ApplicationRecord
  has_many :coupons
  has_many :contents, through: :coupons
  validates :name,:major,:minor, presence: true
  validates_uniqueness_of :name


  scope :enabled,        ->{ where("enabled=?",true)}
  scope :by_major_minor, ->(major,minor) {where("major IN (?) AND minor IN (?)",major,minor)}

  def major_minor
    "#{self.major}/#{self.minor}"
  end

  rails_admin do

    list do
      field :name
      field :major_minor
      field :uuid
      field :enabled
      field :created_at
    end
    create do
      field :name
      field :major
      field :minor
      field :uuid
      field :enabled
    end
    edit do
      field :name
      field :major
      field :minor
      field :uuid
      field :enabled
    end

  end
end
