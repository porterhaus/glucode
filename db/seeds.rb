require 'faker'

u = User.new(
    :name => "D. Brian Porter",
    :email => "porter4487@gmail.com",
    :password => "port75904",
    :role => ["Admin"].sample
)
u.save

5.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(8),
    role: ["Patient", "Caregiver", "Friend"].sample
  )
end
users = User.all

500.times do
    # Add blood glucose test
    bgtest = Bgtest.create!(
      value: [Faker::Number.number(2), Faker::Number.number(3)].sample,
      time_of_day: ["Before breakfast",
                     "After breakfast",
                     "Before lunch",
                     "After lunch",
                     "Before dinner",
                     "After dinner",
                     "Snack"].sample,
      category: ["Control",
                 "Pre-Meal",
                 "Post-Meal",
                 "Bolus Skip",
                 "Meal Skip",
                 "Carb ???",
                 "Exercise",
                 "Sick",
                 "Fasting",
                 "Pre-Bed"].sample,
      comments: Faker::Lorem.paragraph,
      user: users.sample
    )
    bgtest.update_attribute(:created_at, (rand*10).days.ago)
    bgtest.save

    # Add carbohydrates or Meal data
    meal = Meal.create!(
      name: ["Breakfast", "Lunch", "Dinner", "Snack"].sample,
      carbohydrates: [Faker::Number.number(2), Faker::Number.number(3)].sample,
      description: Faker::Lorem.paragraph,
      user: users.sample
    )
    meal.update_attribute(:created_at, (rand*10).days.ago)
    meal.save

    # Add bolus data
    injection = Injection.create!(
      num_of_units_taken: [Faker::Number.number(1), Faker::Number.number(2)].sample,
      category: ["Basal", "Bolus"].sample,
      user: users.sample
    )
    injection.update_attribute(:created_at, (rand*10).days.ago)
    injection.save

end
