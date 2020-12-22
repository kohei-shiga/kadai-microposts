class Micropost < ApplicationRecord
  validates :content, presence: true, length: { maximum: 255 }
  belongs_to :user
  has_many :reverses_of_favorite, class_name: 'Favorite' #dependent: :destroy
  has_many :liked_users, through: :favorites, source: :user
end
