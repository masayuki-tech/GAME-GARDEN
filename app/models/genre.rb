class Genre < ApplicationRecord
  has_many :posts
  
  has_many :genre_tags
  has_many :tags, through: :genre_tags
end
