class Tag < ApplicationRecord

  has_many :post_tags, dependent: :destroy
  has_many :posts, through: :post_tags

  has_many :genre_tags
  has_many :genres, through: :genre_tags
end
