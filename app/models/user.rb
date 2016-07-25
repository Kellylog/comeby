class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :places
  has_many :comments
<<<<<<< HEAD
  
=======
>>>>>>> f1612b6596f7ab7ce29d97c3d68eda852d41dbdb
end
