class Blog < ApplicationRecord
  validates :title, presence:true
  validates :condition, presence:true
  validates :content, length: {in:1..140}, presence:true
end
