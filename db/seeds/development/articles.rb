body =
      " We win Sunflower team with 4:2"

0.upto(9) do |idx|
  Article.create(
  title: "Result of test game#{idx}",
  body: body,
  released_at: 8.days.ago.advance(days: idx),
  expired_at: 2.days.ago.advance(days: idx),
  member_only: (idx % 3  == 0)
  )
end
