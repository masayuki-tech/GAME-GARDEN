class Post < ApplicationRecord
  validates :title, :text, presence: true
  validates :text, :text, presence: true
  belongs_to :genre, optional: true
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end
end
