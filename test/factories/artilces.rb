FactoryGirl.define do
  factory :article do
    sequence(:title) { |n| "Article#{n}"}
    body "Blah, blah, blah"
    released_at 2.weeks.ago
    expired_at 2.weeks.from_now
  end

end
