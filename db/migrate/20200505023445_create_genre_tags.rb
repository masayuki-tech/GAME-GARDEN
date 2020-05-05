class CreateGenreTags < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_tags do |t|
      t.references  :genre,  index: true, foreign_key: true
      t.references  :tag, index: true, foreign_key: true
      t.timestamps
    end
  end
end
