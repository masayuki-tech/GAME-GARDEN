require 'rails_helper'
describe Post do
  describe '#create' do
    it "title,text,genre_id,tag_idsがない場合は登録できないこと" do
      post = build(:post)
      expect(post).to be_valid
    end

    it "titleがない場合は登録できないこと" do
      post = build(:post, title: nil)
      post.valid?
      expect(post.errors[:title]).to include("can't be blank")
    end

    it "textがない場合は登録できないこと" do
      post = build(:post, text: nil)
      post.valid?
      expect(post.errors[:text]).to include("can't be blank")
    end

    it "genre_idがない場合は登録できないこと" do
      post = build(:post, genre_id: nil)
      post.valid?
      expect(post.errors[:genre_id]).to include()
    end

    it "tagが最低１つ以上ない場合は登録できないこと" do
      post = build(:post, tag_ids: nil)
      post.valid?
      expect(post.errors[:tag_ids]).to include()
    end
  end
end