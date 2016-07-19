class Place < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true
end
