Person.delete_all

30.times do
  Person.create!(
    first_name: Faker::Name.first_name,
    last_name: [Faker::Name.last_name, Faker::Name.last_name, nil].sample,
    date_of_birth: ((20.years.ago.to_date..10.years.ago.to_date).to_a + [nil] * 1000).sample
  )
end

24.times do
  Organization.create!(
    name: Faker::Company.name,
  )
end
