# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
FriendRequest.destroy_all
for i in 1..10 do
    User.create!(username: SecureRandom.alphanumeric(5), email: ("qat#{i}@gmail.com"), password:"123456")
end

puts "Created #{User.count} users"