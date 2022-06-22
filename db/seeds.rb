puts "🌱 Seeding spices..."

# Seed your database here
Country.destroy_all
Tourist.destroy_all
Destination.destroy_all

# Tourists

bob = Tourist.create(name:"bob")
bill = Tourist.create(name:"bill")
ben = Tourist.create(name:"ben")
beverly = Tourist.create(name:"beverly")
barbara = Tourist.create(name:"barbara")

# Countries

france = Country.create(country_name:"France", continent:"europe", language:"French")
vietnam = Country.create(country_name:"Vietnam", continent:"asia", language:"Vietnamese")
greece = Country.create(country_name:"Greece", continent:"europe", language:"Greek")
italy = Country.create(country_name:"Italy", continent:"europe", language:"Italian")
syria = Country.create(country_name:"Syria", continent:"asia", language:"Arabic")
lebanon = Country.create(country_name:"Lebanon", continent:"asia", language:"Arabic")
armenia = Country.create(country_name:"Armenia", continent:"asia", language:"Armenian")
japan = Country.create(country_name:"Japan", continent:"asia", language:"Japanese")
south_korea = Country.create(country_name:"South Korea", continent:"asia", language:"Korean")
andorra = Country.create(country_name:"Andorra", continent:"europe", language:"Catalan")
morocco = Country.create(country_name:"Morocco", continent:"africa", language:"Arabic")
angola = Country.create(country_name:"Angola", continent:"africa", language:"Portugese")
argentina = Country.create(country_name:"Argentina", continent:"south america", language:"Spanish")
canada = Country.create(country_name:"Canada", continent:"north america", language:"English")
new_zealand = Country.create(country_name:"New Zealand", continent:"oceania", language:"English")
thailand = Country.create(country_name:"Thailand", continent:"asia", language:"Thai")

# Destinations

nice = Destination.create(destination:"Nice", geography:"beach", rating: 5, country_id: france.id, tourist_id: bob.id)
paris = Destination.create(destination:"Paris", geography:"city", rating: 4, country_id: france.id, tourist_id: bill.id)
hanoi = Destination.create(destination:"Hanoi", geography:"city", rating: 5, country_id: vietnam.id, tourist_id: ben.id)
halong_bay = Destination.create(destination:"Halong Bay", geography:"beach", rating: 5, country_id: vietnam.id, tourist_id: ben.id)
mykonos = Destination.create(destination:"Mykonos", geography:"beach", rating: 3, country_id: greece.id, tourist_id: bob.id)
mt_olympus = Destination.create(destination:"Mt. Olympus", geography:"mountain", rating: 3, country_id: greece.id, tourist_id: beverly.id)
milan = Destination.create(destination:"Milan", geography:"city", rating: 5, country_id: italy.id, tourist_id: beverly.id)
amalfi = Destination.create(destination:"Amalfi", geography:"beach", rating: 2, country_id: italy.id, tourist_id: beverly.id)
damascus = Destination.create(destination:"Damascus", geography:"city", rating: 4, country_id: syria.id, tourist_id: barbara.id)
baalbek = Destination.create(destination:"Baalbek", geography:"city", rating: 5, country_id: lebanon.id, tourist_id: barbara.id)
beirut = Destination.create(destination:"Beirut", geography:"city", rating: 5, country_id: lebanon.id, tourist_id: barbara.id)
yerevan = Destination.create(destination:"Yerevan", geography:"city", rating: 5, country_id: armenia.id, tourist_id: bob.id)
seoul = Destination.create(destination:"Seoul", geography:"city", rating: 5, country_id: south_korea.id, tourist_id: bill.id)
toronto = Destination.create(destination:"Toronto", geography: "city", rating: 1, country_id: canada.id, tourist_id: bob.id)


puts "✅ Done seeding!"
