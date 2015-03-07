require 'faker'

User.destroy_all
Group.destroy_all
Point.destroy_all

5.times do
  User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password: "password", )
  Group.create(email: Faker::Internet.email, password: "password", name: Faker::Company.name, icon_url: Faker::Company.logo, website_url: Faker::Internet.url)
end

User.all.each do |user|
  user.points.create(title: Faker::Company.catch_phrase, description: Faker::Lorem.paragraph, tag: Faker::Lorem.word, score: rand(-10..100))
end

Group.all.each do |group|
  group.points.create(title: Faker::Company.catch_phrase, description: Faker::Lorem.paragraph, tag: Faker::Lorem.word, score: rand(-10..100))
end

Point.all.each do |point|
  rand(1..5).times do
    point.contributions.create(user_id: User.all.sample.id, title: Faker::Lorem.sentence, text: Faker::Lorem.paragraph, image_url: Faker::Company.logo, score: rand(-5..40))
  end
end

Contribution.all.each do |contribution|

  rand(1..5).times do
    contribution.comments.create(user_id: User.all.sample.id, text: Faker::Lorem.paragraph, score: rand(-5..30))
  end

end