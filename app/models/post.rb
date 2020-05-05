class Post < ApplicationRecord
  belongs_to :genre, optional: true
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
end
