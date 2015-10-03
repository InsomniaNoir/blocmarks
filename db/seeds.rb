5.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end
users = User.all

20.times do
  topic = Topic.create!(
    title: Faker::Hacker.noun
  )
end
topics = Topic.all
