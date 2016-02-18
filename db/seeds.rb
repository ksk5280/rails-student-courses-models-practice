# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

students = 10.times do
Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

addresses = 40.times do
Address.create(street_address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip, student_id: ((rand 10) + 1))
end

courses = Course.create([{course_name: "Calculus"}, {course_name: "Chemisty"}, {course_name: "Biology"}, {course_name: "History"}, {course_name: "Geometry"}, {course_name: "Geography"}, {course_name: "PE"}, {course_name: "Algebra"}, {course_name: "English"}])

#
# 1000.times do
# Article.create(title: Faker::Company.buzzword, body: Faker::Lorem.paragraph, author_id: Faker::Number.between(1, 1000))
# end
#
# 100.times do
# Tag.create(name: Faker::Hacker.adjective)
# end
