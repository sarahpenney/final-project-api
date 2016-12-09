# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "groups", "organisms", "papers"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
},{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
}])

puts "Created Users :)"

Group.create!([{
  name: "Terrestrial Animals"
},{
  name: "Marine Animals - Fish"
},{
  name: "Marine Animals - Invertebrates"
},{
  name: "Fungi"
},{
  name: "Bacteria"
},{
  name: "Other Microorganisms"
  }])

 puts "Created Groups :+1:"


Organism.create!([{
  name: "Firefly",
  phylum: "Arthropoda",
  order: "Coleoptera",
  family: "Lampyridae",
  genus: "Elateriformia",
  group_id: 1,
  body: "The Lampyridae are a family of insects in the beetle order Coleoptera. They are winged beetles, commonly called fireflies or lightning bugs for their conspicuous use of bioluminescence during twilight to attract mates or prey. Fireflies produce a 'cold light', with no infrared or ultraviolet frequencies. This chemically produced light from the lower abdomen may be yellow, green, or pale red, with wavelengths from 510 to 670 nanometers."
  }])

puts "Organism has been created"

Paper.create!({
  user_id: 1,
  title: "Will's amazing essay",
  body: "Not that amazing really :("
})
# group1 = Group.create!({
#   name: "Terrestrial Animals"
# })
#
# org1 = Organism.create!([{
#   name: "Firefly",
#   phylum: "Arthropoda",
#   order: "Coleoptera",
#   family: "Lampyridae",
#   genus: "Elateriformia",
#   group_id: group1.id,
#   body: "The Lampyridae are a family of insects in the beetle order Coleoptera. They are winged beetles, commonly called fireflies or lightning bugs for their conspicuous use of bioluminescence during twilight to attract mates or prey. Fireflies produce a 'cold light', with no infrared or ultraviolet frequencies. This chemically produced light from the lower abdomen may be yellow, green, or pale red, with wavelengths from 510 to 670 nanometers."
#   }])
#
# puts org1[0].name  + " was created!!!! Yeah have a party!"
