FactoryBot.define do
  factory :book do
    title { "Book #{rand(1000)}" }
    author
  end
end
