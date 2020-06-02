class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :themes
  has_many :groups
  has_many :comments
  has_many :likes


  validates :name, presence: true, uniqueness: true
end
