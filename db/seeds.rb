# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# phones = Phone.create([{ phone_number: 1111111111 }, { phone_number: 1111111112 },{ phone_number: 1111111112 }])


(1111111111..9999999999).step(1111111111) do |number|
	Phone.create(number: number)
end

clients = Client.create([{name: "john"}, {name: "midge"}, {name: "mark"}, {name: "wayn"}, {name: "david"},{name: "alias"}])