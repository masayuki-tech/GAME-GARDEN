require 'faker'
FactoryBot.define do

  factory :post do
    title {"ロックマンX"}
    text {"面白い"}
    genre_id {2}
    after(:create) do |post|
      post.tags << build(:tag)
    end
  end
end

FactoryBot.define do
  factory :tag do
    name
    created_at { Faker::Time.between(5.days.ago, 3.days.ago, :all) }
    updated_at { Faker::Time.between(2.days.ago, 1.days.ago, :all) }
  end
end

FactoryBot.define do
  factory :post_tag do
    post
    tag
  end
end
