class Blog < ApplicationRecord
  validates :title, presence:true
  validates :condition, presence:true
  validates :content, length: {in:1..140}, presence:true


  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end
