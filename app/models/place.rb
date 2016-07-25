class Place < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
  has_many :comments
  
  
=======
  has_many :comments
  belongs_to :user
>>>>>>> f1612b6596f7ab7ce29d97c3d68eda852d41dbdb

  geocoded_by :address
  after_validation :geocode

<<<<<<< HEAD
  validates :name, presence: true, :length => { :minimum => 3 }
=======
  validates :name, presence: true
>>>>>>> f1612b6596f7ab7ce29d97c3d68eda852d41dbdb
end
