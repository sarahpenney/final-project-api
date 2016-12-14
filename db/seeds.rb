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
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/firefly_zpsq2mmani3.png",
  name: "Firefly",
  phylum: "Arthropoda",
  order: "Coleoptera",
  family: "Lampyridae",
  genus: "Elateriformia",
  group_id: 1,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/clickBeetle_zpsnqdiqq7b.png",
  name: "Click Beetle",
  phylum: "Arthropoda",
  order: "Coleoptera",
  family: "Elateridae",
  genus: "Pyrophorus",
  group_id: 1,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/gloworm_zps561he2wp.png",
  name: "Glow Worm",
  phylum: "",
  order: "",
  family: "",
  genus: "",
  group_id: 1,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/railroad_zpsjsbehkif.png",
  name: "Railroad Worm",
  phylum: "Arthropoda",
  order: "Coleoptera",
  family: "Phengodidae",
  genus: "Phrixothrix",
  group_id: 1,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/moxy_zpssxapzqsi.png",
  name: "Motyxia",
  phylum: "Arthropoda",
  order: "Polydesmida",
  family: "Xystodesmidae",
  genus: "Motyxia",
  group_id: 1,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/snail_zpsg9swaneu.png",
  name: "Quantula Striata",
  phylum: "Mollusca",
  order: "",
  family: "Dyakiidae",
  genus: "Quantula",
  group_id: 1,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/annelid_zpsiunsltxb.png",
  name: "Annelid",
  phylum: "Lophotrochozoa",
  order: "",
  family: "",
  genus: "",
  group_id: 1,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/anglerfish_zpsxid43may.png",
  name: "Anglerfish",
  phylum: "Chordata",
  order: "Lophiiformes",
  family: "",
  genus: "",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/sharkBelly_zps0pinoglg.png",
  name: "Cookiecutter Shark",
  phylum: "Chordata",
  order: "Squaliformes",
  family: "Dalatiidae",
  genus: "Isistius",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/catfish_zpsrjqafhq2.png",
  name: "Catshark",
  phylum: "Chordata",
  order: "Carcharhiniformes",
  family: "Scyliorhinidae",
  genus: "",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/nicefish_zpsxmsz4iqa.png",
  name: "Flashlight Fish",
  phylum: "",
  order: "",
  family: "",
  genus: "",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/gulperEel_zpsy25ledao.png",
  name: "Gulper Eel",
  phylum: "Chordata",
  order: "Saccopharyngiformes",
  family: "",
  genus: "",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/lightFish_zpsdr3tozng.png",
  name: "Lanternfish",
  phylum: "Chordata",
  order: "Myctophiformes",
  family: "Myctophidae",
  genus: "Elateriformia",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/uglyFisheat_zps592703gr.png",
  name: "Marine Hatchetfish",
  phylum: "Chordata",
  order: "Stomiiformes",
  family: "Sternoptychidae",
  genus: "",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/tinyFish_zpsfc74khjc.png",
  name: "Midshipman Fish",
  phylum: "Chordata",
  order: "Batrachoidiformes",
  family: "Batrachoididae",
  genus: "Porichthys",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/pinecone_zpsrqgpcanl.png",
  name: "Pinecone Fish",
  phylum: "Chordata",
  order: "Beryciformes",
  family: "Monocentridae",
  genus: "Cleidopus",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/eelguy_zpscykkfczp.png",
  name: "Viperfish",
  phylum: "Chordata",
  order: "Stomiiformes",
  family: "Stomiidae",
  genus: "Chauliodus",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/dragonFish_zps9qgmfbfd.png",
  name: "Black Dragonfish",
  phylum: "Chordata",
  order: "Stomiiformes",
  family: "Stomiidae",
  genus: "Idiacanthus",
  group_id: 2,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/domeJelly_zpsgak6pdjy.png",
  name: "Cnidaria",
  phylum: "Cnidaria",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/seaPen_zpsiaidicqt.png",
  name: "Sea Pen",
  phylum: "Cnidaria",
  order: "Pennatulacea",
  family: "Lampyridae",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/coral_zpswmqcwh78.png",
  name: "Coral",
  phylum: "Cnidaria",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/JellyFancy_zps06stncjg.png",
  name: "Jellyfish",
  phylum: "Cnidaria",
  order: "Leptomedusae",
  family: "Aequoreidae",
  genus: "Aequorea",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/combJelly_zpsm8kszzm4.png",
  name: "Comb Jellies",
  phylum: "Ctenophora",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/starfish_zpstvnkefrv.png",
  name: "Echinoderm",
  phylum: "Echinodermata",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/crustacean_zpsxzwcxrid.png",
  name: "Crustacean",
  phylum: "Arthropoda",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/arrow_zpsovc4n8ic.png",
  name: "Arrow Worms",
  phylum: "Chaetognatha",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/oyster_zpsbbidqetm.png",
  name: "Clams",
  phylum: "Mollusca",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/seaSlug_zpsd5eqgh3x.png",
  name: "Sea Slugs",
  phylum: "Mollusca",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/octopus_zpspfwc0qe0.png",
  name: "Octopus",
  phylum: "Mollusca",
  order: "Octopoda",
  family: "",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/vampire_zpsutryd3wk.png",
  name: "Vampire Squid",
  phylum: "Mollusca",
  order: "Vampyromorphida",
  family: "Vampyroteuthidae",
  genus: "Vampyroteuthis",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/bobtail_zpsiavkxqvp.png",
  name: "Bobtail Squid",
  phylum: "Mollusca",
  order: "Sepiolida",
  family: "",
  genus: "",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/colossalSquid_zpsn7zefkt0.png",
  name: "Colossal Squid",
  phylum: "Mollusca",
  order: "Teuthida",
  family: "Cranchiidae",
  genus: "Mesonychoteuthis",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/xmasLightSquid_zpstudabmzw.png",
  name: "Sparkling Enope Squid",
  phylum: "Mollusca",
  order: "Teuthida",
  family: "Enoploteuthidae",
  genus: "Watasenia",
  group_id: 3,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/fungi_zpsffi5s0rr.png",
  name: "Fungi",
  phylum: "",
  order: "",
  family: "",
  genus: "",
  group_id: 4,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/BacteriaOne_zpsx2cw1nrk.png",
  name: "Vibrionaceae",
  phylum: "Proteobacteria",
  order: "Vibrionales",
  family: "Vibrionaceae",
  genus: "",
  group_id: 5,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/bacteriaTwo_zpswywzyidz.png",
  name: "Shewanella",
  phylum: "Proteobacteria",
  order: "Alteromonadales",
  family: "Shewanellaceae",
  genus: "Shewanella",
  group_id: 5,
  body: ""
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/microorganisms_zpsxqwc6wpd.png",
  name: "Protist",
  phylum: "",
  order: "",
  family: "",
  genus: "",
  group_id: 6,
  body: ""
  }])

puts "Organism has been created"

Paper.create!([{
  user_id: 1,
  organism_id: 1,
  title: "Fireflies",
  body: "The Lampyridae are a family of insects in the beetle order Coleoptera. They are winged beetles, commonly called fireflies or lightning bugs for their conspicuous use of bioluminescence during twilight to attract mates or prey. Fireflies produce a 'cold light', with no infrared or ultraviolet frequencies. This chemically produced light from the lower abdomen may be yellow, green, or pale red, with wavelengths from 510 to 670 nanometers.
About 2,000 species of fireflies are found in temperate and tropical climates. Many are in marshes or in wet, wooded areas where their larvae have abundant sources of food. Their larvae emit light and often are called 'glowworms' in Eurasia and elsewhere. In the Americas, 'glow worm' also refers to the related Phengodidae. In many species, both male and female fireflies have the ability to fly, but in some species, the females are flightless."
},{
  user_id: 1,
  organism_id: 2,
  title: "Click Beetles ",
  body: "....."
},{
  user_id: 2,
  organism_id: 3,
  title: "Glow worms",
  body: "....."
},{
  user_id: 1,
  organism_id: 4,
  title: "Railroad Worms",
  body: "....."
},{
  user_id: 1,
  organism_id: 5,
  title: "Motyxia",
  body: "........."
},{
  user_id: 1,
  organism_id: 6,
  title: "Quantula striata",
  body: "........"
},{
  user_id: 2,
  organism_id: 7,
  title: "Annelid",
  body: "........"
},{
  user_id: 1,
  organism_id: 8,
  title: "paper on...8",
  body: "......"
},{
  user_id: 1,
  organism_id: 9,
  title: "paper on... 9",
  body: "........"
},{
  user_id: 1,
  organism_id: 10,
  title: "paper on...10",
  body: "..."
},{
  user_id: 1,
  organism_id: 11,
  title: "paper on...11",
  body: "paper on..."
},{
  user_id: 2,
  organism_id: 12,
  title: "paper on...12",
  body: "...."
},{
  user_id: 1,
  organism_id: 13,
  title: "paper on...13",
  body: "....."
},{
  user_id: 1,
  organism_id: 14,
  title: "paper on...14",
  body: "....."
},{
  user_id: 1,
  organism_id: 15,
  title: "paper on...15",
  body: "......"
},{
  user_id: 1,
  organism_id: 16,
  title: "paper on...16",
  body: "......"
},{
  user_id: 2,
  organism_id: 17,
  title: "paper on...17",
  body: ".........."
},{
  user_id: 2,
  organism_id: 18,
  title: "paper on...18",
  body: "........"
},{
  user_id: 2,
  organism_id: 19,
  title: "paper on... 19",
  body: "........."
},{
  user_id: 1,
  organism_id: 20,
  title: "paper on...20",
  body: "........."
},{
  user_id: 1,
  organism_id: 21,
  title: "paper on...21",
  body: "........"
},{
  user_id: 1,
  organism_id: 22,
  title: "Wpaper on...22",
  body: "......."
},{
  user_id: 1,
  organism_id: 23,
  title: "paper on...23",
  body: "......."
},{
  user_id: 1,
  organism_id: 24,
  title: "paper on...24",
  body: "........."
},{
  user_id: 2,
  organism_id: 25,
  title: "paper on...25",
  body: "........"
},{
  user_id: 1,
  organism_id: 26,
  title: "paper on...26",
  body: "........"
},{
  user_id: 1,
  organism_id: 27,
  title: "paper on...27",
  body: "........."
},{
  user_id: 1,
  organism_id: 28,
  title: "paper on...28",
  body: "........."
},{
  user_id: 2,
  organism_id: 29,
  title: "paper on...29",
  body: ".........."
},{
  user_id: 2,
  organism_id: 30,
  title: "paper on...30",
  body: "............."
},{
  user_id: 1,
  organism_id: 31,
  title: "paper on...31",
  body: ".........."
},{
  user_id: 1,
  organism_id: 32,
  title: "paper on...32",
  body: "...."
},{
  user_id: 1,
  organism_id: 33,
  title: "paper on...33",
  body: "......."
},{
  user_id: 1,
  organism_id: 34,
  title: "paper on...34",
  body: "......."
},{
  user_id: 1,
  organism_id: 35,
  title: "paper on...35",
  body: "...."
},{
  user_id: 1,
  organism_id: 36,
  title: "paper on...36",
  body: "...."
},{
  user_id: 2,
  organism_id: 37,
  title: "paper on...37",
  body: "........."
}])
