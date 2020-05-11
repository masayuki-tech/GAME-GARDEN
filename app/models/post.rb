class Post < ApplicationRecord
  validates :title, :text, presence: true
  validates :text, :text, presence: true
  validates :post_tags, 
        length: { 
            minimum: 1
        }

  belongs_to :genre
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end
end
