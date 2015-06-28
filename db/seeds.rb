require 'faker'
u = User.new(
    :name => "D. Brian Porter",
    :email => "porter4487@gmail.com",
    :password => "port75904",
    :role => ["admin"].sample
)
u.save
10.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(8),
    role: ["patient", "caregiver", "follower"].sample
  )
end
users = User.all

50.times do
  Bgtest.create!(
    value: [Faker::Number.number(2), Faker::Number.number(3)].sample,
    time_of_day: ["Before breakfast",
                   "After breakfast",
                   "Before lunch",
                   "After lunch",
                   "Before dinner",
                   "After dinner",
                   "Snack"].sample,
    category: "smbg",
    comments: Faker::Lorem.paragraph,
    user: users.sample
  )
end

50.times do
  Injection.create!(
    num_of_units_taken: [Faker::Number.number(1), Faker::Number.number(2)].sample,
    category: ["basal", "bolus"].sample,
    user: users.sample
  )
end

50.times do
  Meal.create!(
    name: ["breakfast", "lunch", "dinner", "snack"].sample,
    carbohydrates: [Faker::Number.number(2), Faker::Number.number(3)].sample,
    description: Faker::Lorem.paragraph,
    user: users.sample
  )
end
