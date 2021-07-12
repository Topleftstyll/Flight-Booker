# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Airport.create(name: 'YYZ')
# Airport.create(name: 'JAL')
# Airport.create(name: 'SYD')
# Airport.create(name: 'YVR')
# Airport.create(name: 'YEG')
# Airport.create(name: 'CAL')
# Airport.create(name: 'KAL')

Flight.create(from_airport_id: 2, to_airport_id: 5, date: "2021-07-01 04:49:20.279785000 +0000", duration: 31241234)
