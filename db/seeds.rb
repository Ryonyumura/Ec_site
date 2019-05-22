Admin.create!(
  email: "admin@gmail.com",
  password: "password",
  created_at:Time.now
  )

50.times do
  admin_first = Admin.first

  admin_first.products.create!(
    name: Faker::Book.title,
    description: Faker::Lorem.paragraph(2),
    price: Faker::Number.within(100..100000),
    unit: %w(yen usd).sample
  )
end
