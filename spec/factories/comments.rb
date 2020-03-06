FactoryBot.define do
  factory :comment do
    commenter { "MyString" }
    body { "MyText" }
    article {Article.create(title:"Mean Pigeons", content:"All pigeons are evil")}
  end
end
