class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bikes
  has_many :bookings
  validates :first_name, :last_name, :address_line_1, :city, :zipcode, :country, presence: true
  validates :email, presence: true, uniqueness: true

  # 17.11.2020 Emile : Possibilité d'avoir un avatar par utilisateur
  has_one_attached :avatar
end
