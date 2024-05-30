FactoryBot.define do
  factory :author do
    name { "Author #{rand(1000)}" }

    trait :with_books do
      after(:create) do |author|
        create_list(:book, 3, author: author)
      end
    end
  end
end