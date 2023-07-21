class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [:normal, :owner]
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_one_attached :profile_photo
  has_many :photos, dependent: :destroy
end
