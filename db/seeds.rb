5.times do |_|
  User.create(username: Faker::Internet.username(specifier: 8),role: rand(0..2))
end
