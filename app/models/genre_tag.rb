class GenreTag < ApplicationRecord
  belongs_to :genre
  belongs_to :tag
end
