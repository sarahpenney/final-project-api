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
  organism_id: 1,
  title: "National Geographic Fireflies",
  body: "Fireflies are familiar, but few realize that these insects are actually beetles, nocturnal members of the family Lampyridae. Most fireflies are winged, which distinguishes them from other luminescent insects of the same family, commonly known as glowworms.
  There are about 2,000 firefly species. These insects live in a variety of warm environments, as well as in more temperate regions, and are a familiar sight on summer evenings. Fireflies love moisture and often live in humid regions of Asia and the Americas. In drier areas, they are found around wet or damp areas that retain moisture.
  Everyone knows how fireflies got their name, but many people don't know how the insects produce their signature glow. Fireflies have dedicated light organs that are located under their abdomens. The insects take in oxygen and, inside special cells, combine it with a substance called luciferin to produce light with almost no heat.
  Firefly light is usually intermittent, and flashes in patterns that are unique to each species. Each blinking pattern is an optical signal that helps fireflies find potential mates. Scientists are not sure how the insects regulate this process to turn their lights on and off.
  Firefly light may also serve as a defense mechanism that flashes a clear warning of the insect's unappetizing taste. The fact that even larvae are luminescent lends support to this theory.
  Females deposit their eggs in the ground, which is where larvae develop to adulthood. Underground larvae feed on worms and slugs by injecting them with a numbing fluid.
  Adults eschew such prey and typically feed on nectar or pollen, though some adults do not eat at all."
},{
  user_id: 1,
  organism_id: 2,
  title: "Click Beetles ",
  body: "My Home: I am found all over the world in warm
climates and in areas of high vegetation. I am
nocturnal and am attracted to lights.

What I eat: As a larva, I will eat the roots of
plants. As an adult, I drink the nectar from
flowers.

What I look like: I am brown in color and from
¼ to ¾ of an inch in length. I have a hinge
across my body that allows me to flex. If I fall on
my back I will flex, which makes me fly up in the
air and produces the clicking sound. I will also
'click' to scare off predators.

How I am born: I go through four stages of development:
egg, larva, pupa and adult. The female lays her eggs at the base
of plants. Once my egg hatches into larva, I will live up to four years in this stage before I turn into an adult. Both adults and larvae will hibernate in the ground during the winter.

  Fun Facts
Click beetles are very good at 'playing dead' to be
less interesting to a bird or other predator, and will pretend they are dead for hours at a time."
},{
  user_id: 1,
  organism_id: 2,
  title: "Term paper on Click Beetles",
  body: "Click beetles can be large and colorful, but most are under 2 centimeters long and dull in coloration and patterning. The adults are typically nocturnal and phytophagous, but rarely of economic importance. On hot nights they may enter houses, but are not pests. Click beetle larvae, called wireworms, are usually saprophagous, living on dead organisms, but some species are serious agricultural pests, and others are active predators of other insect larvae. Some elaterid species are bioluminescent in both larval and adult form, such as those of the genus Pyrophorus.
Larvae are slender, elongate, cylindrical or somewhat flattened, with relatively hard bodies, somewhat resembling mealworms. The three pairs of legs on the thoracic segments are short and the last abdominal segment is, as is frequently the case in beetle larvae, directed downwards and may serve as a terminal proleg in some species. The ninth segment, the rearmost, is pointed in larvae of Agriotes, Dalopius and Melanotus, but is bifid due to a so-called caudal notch in Selatosomus (formerly Ctenicera), Limonius, Hypnoides and Athous species.[5] The dorsum of the ninth abdominal segment may also have sharp processes, such as in the Oestodini, including the genera Drapetes and Oestodes. Although some species complete their development in one year (e.g. Conoderus), wireworms usually spend three or four years in the soil, feeding on decaying vegetation and the roots of plants, and often causing damage to agricultural crops such as potato, strawberry, corn, and wheat.[6][7] The subterranean habits of wireworms, their ability to quickly locate food by following carbon dioxide gradients produced by plant material in the soil,[8] and their remarkable ability to recover from illness induced by insecticide exposure (sometimes after many months),[9] make it hard to exterminate them once they have begun to attack a crop. Wireworms can pass easily through the soil on account of their shape and their propensity for following pre-existing burrows,[10] and can travel from plant to plant, thus injuring the roots of multiple plants within a short time. Methods for pest control include crop rotation and clearing the land of insects before sowing.
Other subterranean creatures such as the leatherjacket grub of crane flies which have no legs, and geophilid centipedes, which may have over two hundred, are sometimes confused with the six-legged wireworms."
},{
  user_id: 2,
  organism_id: 3,
  title: "ABC glow worm slab",
  body: "Midnight is generally a good time to be tucked up in bed, sound asleep. But on this particular night, I find myself disembarking from a car at the edge of Springbrook National Park. Stifling a yawn, I throw my camera and tripod across my shoulder and hurry after my companions.
The galaxy of glow-worms
Glow-worms at Natural Bridge in Springbrook National Park give off a blue-green bioluminescence, which they use to lure prey. (Image: Wendy Pyper)
Our pencil-light torches pick out a well-worn path leading down to the rocky overhang known as 'Natural Bridge'. The overhang formed over millions of years, as a stream flowed over layers of volcanic rock. Today it sports a dramatic waterfall that plunges 10 or so metres into a crystal clear pool. It's a popular south-east Queensland tourist spot. But it's not only the waterfall that attracts tourists.
As we descend the steps that take us behind the waterfall, we're transported into the inky blackness of a shallow cavern. Moisture drips from the ceiling, and somewhere to our right, a colony of bats chatters and flaps through the darkness. But as our eyes adjust, a spectacle rivalling that of the Milky Way reveals itself. All around us, in the cracks and crevices of the cavern ceiling and walls, stretches a galaxy of tiny blue-green lights.
Switching on a head-lamp, University of Queensland PhD student, Claire Baker, studies one of the wall crevices. Ushering me nearer, she points out the source of one blue-green light. Suspended in a 'web' of sticky silk threads is a glow-worm - or more precisely, the glowing maggot of a mosquito-like fly."
},{
user_id: 2,
organism_id: 3,
title: "Glow worms by Evan, grade 1",
body: "The scientific name of this insect is Bolitophila luminosa. Some years ago the name was changed. I think on unsatisfactory grounds, to Arachnocampa luminosa— so let us call it B. luminosa. This insect belongs to the group of fungus flies, Mycetophilidae, sometimes called shade-flies because they like damp shaded situations. Most of the larvae of these fungus flies live on damp rotten vegetation, or they bore in fungi such as mushrooms. In the British Isles it is difficult to find an old mushroom which is not being tunnelled by small white mycetophilid worms. From such lowly ancestors our glow-worm is descended. The first European scientist who noticed the glow-worm was Meyrick, about 1880, who saw it on the banks of a stream at Auckland. Meyrick thought the light came from the head end, whereas we know it comes from the tail end. Meyrick had noted the peculiar snare that this insect makes, and he rightly thought that the glow-worm might catch insects and eat them, as do spiders. Most other well-known fire-flies, or luminescent insects, are beetles, belonging to the family of which the click beetle is a member.
The distinguished New Zealand entomologist George Vernon Hudson, who died not many years ago, was very interested in glow-worms; he encouraged a young friend, Albert Norris, to help him in his observations. Norris was an exact observer, and all his descriptions of the behaviour of the glow-worm have proved correct. Unfortunately Norris died as a young man. He was one of many young people that G. V. Hudson had encouraged in studies of New Zealand entomology. No one knew what organ in B. luminosa produced the light, but in 1915 two Americans, Wheeler and Williams, had, after a visit to this country, taken some glow-worms home in a bottle of methylated spirit, and they correctly stated that the light organs were the swollen ends of the malpighian tubules (Fig. 1, L). Malpighi was a famous Italian anatomist of the Middle Ages, and his name is also linked with a part of the vertebrate kidney. In almost all insects waste matter is stored up in from four to eighty or a hundred malpighian tubules which connect to the insect gut where the mesenteron (stomach) and intestine join. Before an insect like a butterfly pupates, these stored-up waste urates are cleared out via the intestine.
The discovery of Wheeler and Williams was all the more remarkable as there seems to be no reason why part of the malpighian tubules should become so modified as to be able to produce light. In the beetle fire-flies, PAGE 87 light is produced from modified fatty cells. This also is the case in a European mycetophilid. which also builds a web, not so elaborate as that of B. luminosa
About 1892, Albert Norris showed that the glow-worm was predaceous and carnivorous, and the snare was used to capture insects which had been attracted by the light. That this is true was finally proven by Wheeler and Williams in 1915, when they found pieces of chopped-up insects in the mesenteron of the glow-worms (Fig. 1, M).
Those who examine the snares of glow-worms living outside on river and creek banks, will notice that there is a curtain of hanging or vertical silken lines which are fastened beside a more or less horizontal silken runway on which the worm lies (Fig. 3). If you touch the snare the worm rushes immediately into a tunnel or crack (HP) into which the runway is continued. If you now carefully cut away the side of the tunnel you will find the worm still glowing, but it soon douses its light. Thus it can retreat into its hiding place in about three seconds, and this covers its light. People have thought that the worm can douse its light in a matter of seconds, but this apparent almost instantaneous dousing is due to its retreat into a crack or tunnel. We will return to this matter later.
The vertical hanging snare lines (Fig. 3, SL) are usually about an inch long; but in miners’ abandoned shafts, and in caves, these lines may be twenty-four inches long. On banks, the worms usually live in sheltered places, and they hang lines longer than an inch, if they have found that wind does not tangle up their net. The vertical lines have regularly placed droplets of mucus on them, so as to give the appearance of a string of beads. This mucus helps to entangle insects which fly against the curtain. One snare photographed years ago by Dr. Salmon had more than forty vertical lines. The larger the snare, the better the chance that it will catch food. Albert Norris said that the horizontal line in which the worm reposed was really a tube. It is true that the worm in this position is itself covered with mucus and silk, which resembles a tube. In the case of the wheel-like web of the spider Epeira. the spokes of tension lines are of plain silk, but the spiral lines of this snare have little sticky droplets. In this case the spider spins a silk line, and as it hardens, a gland covers the silk with a thin sticky substance which by surface tension becomes resolved into a single chain of droplets. It was thought that the droplets of the snare of B. luminosa might be so produced, but recent observations seemed to have shown that the worm emits a single thread, waits, and then spews out of its mouth a droplet of mucus the correct size. Then the silk line is continued, then another mucus droplet is put in place, and so on. When a chain of the right length is produced, it is held by the larva, and then stuck in the right place, at the right distance from other already spun vertical lines. Thus this insect is able to judge distance. If you sweep away the vertical curtain with a stick, the worm will that evening begin to make new lines, and will finish the job in a night or so. The very long lines seen in curves each probably represent the capacity at one time for secretion of the PAGE 88 mucus and silk glands of the worm. This may seem unlikely, but it should be remembered that the spider Epeira can make a whole new web in about twelve hours, and the glands of B. luminosa are comparatively very large.
Now as regards the anatomy of the larva, Gouri Ganguly, an Indian woman zoologist who studied these larvae at Dublin, found that the two tiny thumb-like papillae at the end of its body contained chordotonal organs. These are peculiar sense organs found in various parts of the anatomy (usually on the legs) of insects. They are sense organs designed to register vibrations, and they consist of an arrangement like an elastic thread on which are wrapped sense cells (Fig. 2, SC). The struggles of insects which have been caught by the vertical fishing lines are thus noted by the glow-worm, which at once climbs down these lines and kills the insect with its powerful jaws. The struggles of the captured insect, and the descent of the glow-worm, make a muddle of the snare, but this is later straightened out by the larva. The latter just sucks out the blood of its prey, and if food has been scarce, as it must be in caves, the larva with its mouth-parts carefully saws the body and legs of the prey into the right size for swallowing whole. If there has been a good supply of food, the larva chops up only the juicy parts, and discards the harder regions of the prey.
When the larva is about a little more than an inch in length, it is full grown, and it now makes preparations for pupation. These have rarely been seen, and never properly described. We believe that the larva clears away all its vertical sticky lines and releases one end of its horizontal runway, so that it hangs in a bare space under a bank, or from the roof of a cave. It now sloughs off its larval skin, and becomes a hanging pupa."
},{
  user_id: 1,
  organism_id: 4,
  title: "Railroad Worms",
  body: ""
},{
  user_id: 1,
  organism_id: 5,
  title: "Motyxia",
  body: "Various functions have been proposed for the 40–50 independent origins of bioluminescence across the tree of life—for example, mate recognition, prey attraction, camouflage, and warning coloration [1]. Millipedes in the genus Motyxia produce a greenish-blue bioluminescence at a wavelength of 495 nm that can be seen in darkness [2]. These detritivores are chemically defended by cyanide, which they generate internally and discharge through lateral ozopores [3]. Motyxia are blind, and thus provide an ideal model system to investigate the ecological role of bioluminescence since discrimination of their visual appearance is limited to other organisms, for example predators. Detailed studies have been made of the biochemical mechanisms underlying Motyxia bioluminescence [2, 4]. In contrast, the adaptive significance of the bioluminescence in these millipedes remained unknown [5, 6]. We show that bioluminescence has a single evolutionary origin in millipedes and it serves as an aposematic warning signal to deter nocturnal mammalian predators. Contrary to the intuitive expectation that luminescence might attract curious predators, we obtained strong experimental evidence in field trials that luminescence deters predation attempts, with living and artificial non-luminescent millipedes being attacked up to four times more often than their luminescent counterparts. Among the numerous examples of bioluminescence, this is the first field experiment in any organism to demonstrate that bioluminescence functions as a warning signal.
Aposematic colors warn predators of distasteful or unpleasant qualities, such as spines, venoms, or chemical explosions [7]. When disturbed, blind millipedes in the order Polydesmida generate a toxin by means of a cyanohydrin reaction in which a stable precursor, mandelonitrile, is enzymatically converted into hydrogen cyanide [3]. Many diurnal species display aposematic coloration in yellow, orange, or red [8]. In contrast, those in the genus Motyxia (= Luminodesmus) are nocturnal and do not display conspicuous color in daylight. Instead, Motyxia species are bioluminescent, producing a greenish-blue light that gradually intensifies when the millipede is disturbed (Fig. 1A, B). Currently, 8 species of luminescent millipedes are known among the 12,000 millipede species that have been described [5, 6]. The 8 species comprise a single clade and are globally restricted to 3 counties in California [Figure S1, Supplemental Information]. Light from Motyxia originates in the exoskeleton and involves a photoprotein that contains a chromophore with porphyrin as its functional group [2, 4]. The basic photogenic mechanism is more similar to that of the GFP-jellyfish, Aequorea victoria, than that of the more closely-related firefly Photinus pyralis [4]. Nevertheless, the structure of the luminescent molecules remains unknown and their homologies to molecules of other animals are uncertain [2, 4]. Several hypotheses for the function of bioluminescence in Motyxia have been suggested. One hypothesis states that luminescence serves as an aposematic signal, warning would-be predators of its noxiousness [6]. It has also been suggested that the bioluminescence serves no function at all [5], or even that it inadvertently attracts predators. Until now, these competing hypotheses have not been tested."
},{
  user_id: 1,
  organism_id: 5,
  title: "Motyxia and why they glow",
  body: "Various functions have been proposed for the 40–50 independent origins of bioluminescence across the tree of life—for example, mate recognition, prey attraction, camouflage, and warning coloration [1]. Millipedes in the genus Motyxia produce a greenish-blue bioluminescence at a wavelength of 495 nm that can be seen in darkness [2]. These detritivores are chemically defended by cyanide, which they generate internally and discharge through lateral ozopores [3]. Motyxia are blind, and thus provide an ideal model system to investigate the ecological role of bioluminescence since discrimination of their visual appearance is limited to other organisms, for example predators. Detailed studies have been made of the biochemical mechanisms underlying Motyxia bioluminescence [2, 4]. In contrast, the adaptive significance of the bioluminescence in these millipedes remained unknown [5, 6]. We show that bioluminescence has a single evolutionary origin in millipedes and it serves as an aposematic warning signal to deter nocturnal mammalian predators. Contrary to the intuitive expectation that luminescence might attract curious predators, we obtained strong experimental evidence in field trials that luminescence deters predation attempts, with living and artificial non-luminescent millipedes being attacked up to four times more often than their luminescent counterparts. Among the numerous examples of bioluminescence, this is the first field experiment in any organism to demonstrate that bioluminescence functions as a warning signal.
Aposematic colors warn predators of distasteful or unpleasant qualities, such as spines, venoms, or chemical explosions [7]. When disturbed, blind millipedes in the order Polydesmida generate a toxin by means of a cyanohydrin reaction in which a stable precursor, mandelonitrile, is enzymatically converted into hydrogen cyanide [3]. Many diurnal species display aposematic coloration in yellow, orange, or red [8]. In contrast, those in the genus Motyxia (= Luminodesmus) are nocturnal and do not display conspicuous color in daylight. Instead, Motyxia species are bioluminescent, producing a greenish-blue light that gradually intensifies when the millipede is disturbed (Fig. 1A, B). Currently, 8 species of luminescent millipedes are known among the 12,000 millipede species that have been described [5, 6]. The 8 species comprise a single clade and are globally restricted to 3 counties in California [Figure S1, Supplemental Information]. Light from Motyxia originates in the exoskeleton and involves a photoprotein that contains a chromophore with porphyrin as its functional group [2, 4]. The basic photogenic mechanism is more similar to that of the GFP-jellyfish, Aequorea victoria, than that of the more closely-related firefly Photinus pyralis [4]. Nevertheless, the structure of the luminescent molecules remains unknown and their homologies to molecules of other animals are uncertain [2, 4]. Several hypotheses for the function of bioluminescence in Motyxia have been suggested. One hypothesis states that luminescence serves as an aposematic signal, warning would-be predators of its noxiousness [6]. It has also been suggested that the bioluminescence serves no function at all [5], or even that it inadvertently attracts predators. Until now, these competing hypotheses have not been tested.
  Various functions have been proposed for the 40–50 independent origins of bioluminescence across the tree of life—for example, mate recognition, prey attraction, camouflage, and warning coloration [1]. Millipedes in the genus Motyxia produce a greenish-blue bioluminescence at a wavelength of 495 nm that can be seen in darkness [2]. These detritivores are chemically defended by cyanide, which they generate internally and discharge through lateral ozopores [3]. Motyxia are blind, and thus provide an ideal model system to investigate the ecological role of bioluminescence since discrimination of their visual appearance is limited to other organisms, for example predators. Detailed studies have been made of the biochemical mechanisms underlying Motyxia bioluminescence [2, 4]. In contrast, the adaptive significance of the bioluminescence in these millipedes remained unknown [5, 6]. We show that bioluminescence has a single evolutionary origin in millipedes and it serves as an aposematic warning signal to deter nocturnal mammalian predators. Contrary to the intuitive expectation that luminescence might attract curious predators, we obtained strong experimental evidence in field trials that luminescence deters predation attempts, with living and artificial non-luminescent millipedes being attacked up to four times more often than their luminescent counterparts. Among the numerous examples of bioluminescence, this is the first field experiment in any organism to demonstrate that bioluminescence functions as a warning signal.
  Aposematic"
},{
  user_id: 1,
  organism_id: 6,
  title: "Quantula striata",
  body: "The Glowing Snail is an uncommon critter that only spawns on Mushroom Biomes. It can be caught using the Bug Net to be carried around in the inventory and released later, or crafted into a Glowing Snail Cage to be placed as an animated furniture item, and it also gives off a small amount of blue light. It cannot be released once crafted. Its counterpart is the Snail.
Along with its uncommon chance to spawn, it often spawns together with or near enemies, causing it to be killed rather easily by them or by accident by the player. It is also quite large compared to the normal cave dwelling counterpart, looking like an enemy rather than a critter. Due to this it is one of the hardest critters to find and catch.
Glowing snails can be used as bait for fishing, having 15% bait power.
A Glowing Snail cage occupies a 3x2 space. The Glowing Snail inside may follow the following patterns randomly:"
},{
  user_id: 1,
  organism_id: 6,
  title: "Glowing Snail species",
  body: "The Glowing Snail is an uncommon critter that only spawns on Mushroom Biomes. It can be caught using the Bug Net to be carried around in the inventory and released later, or crafted into a Glowing Snail Cage to be placed as an animated furniture item, and it also gives off a small amount of blue light. It cannot be released once crafted. Its counterpart is the Snail.
Along with its uncommon chance to spawn, it often spawns together with or near enemies, causing it to be killed rather easily by them or by accident by the player. It is also quite large compared to the normal cave dwelling counterpart, looking like an enemy rather than a critter. Due to this it is one of the hardest critters to find and catch.
Glowing snails can be used as bait for fishing, having 15% bait power.
A Glowing Snail cage occupies a 3x2 space. The Glowing Snail inside may follow the following patterns randomly:"
},{
  user_id: 2,
  organism_id: 7,
  title: "Annelid",
  body: "The animals in the Annelida are segmented worms. They have no legs, and no hard skeleton. Unlike mollusks, annelid bodies are divided into many little segments, like rings joined together. There are many other kinds of worms, but only annelids are segmented this way. There are three main groups of annelids, the earthworms (and their relatives), the leeches , and a big group that lives in the ocean and are called polychaetes (pol-ee-keets). We only have information about earthworms and leeches in the Critter Catalog."
},{
  user_id: 2,
  organism_id: 7,
  title: "Annelid's and their lives",
  body: "The animals in the Annelida are segmented worms. They have no legs, and no hard skeleton. Unlike mollusks, annelid bodies are divided into many little segments, like rings joined together. There are many other kinds of worms, but only annelids are segmented this way. There are three main groups of annelids, the earthworms (and their relatives), the leeches , and a big group that lives in the ocean and are called polychaetes (pol-ee-keets). We only have information about earthworms and leeches in the Critter Catalog."
},{
  user_id: 1,
  organism_id: 8,
  title: "Anglerfish",
  body: "The angry-looking deep sea anglerfish has a right to be cranky. It is quite possibly the ugliest animal on the planet, and it lives in what is easily Earth's most inhospitable habitat: the lonely, lightless bottom of the sea.
There are more than 200 species of anglerfish, most of which live in the murky depths of the Atlantic and Antarctic oceans, up to a mile below the surface, although some live in shallow, tropical environments. Generally dark gray to dark brown in color, they have huge heads and enormous crescent-shaped mouths filled with sharp, translucent teeth. Some angler fish can be quite large, reaching 3.3 feet (1 meter) in length. Most however are significantly smaller, often less than a foot.
Their most distinctive feature, worn only by females, is a piece of dorsal spine that protrudes above their mouths like a fishing pole—hence their name. Tipped with a lure of luminous flesh this built-in rod baits prey close enough to be snatched. Their mouths are so big and their bodies so pliable, they can actually swallow prey up to twice their own size.
The male, which is significantly smaller than the female, has no need for such an adaptation. In lieu of continually seeking the vast abyss for a female, it has evolved into a permanent parasitic mate. When a young, free-swimming male angler encounters a female, he latches onto her with his sharp teeth. Over time, the male physically fuses with the female, connecting to her skin and bloodstream and losing his eyes and all his internal organs except the testes. A female will carry six or more males on her body."
},{
  user_id: 1,
  organism_id: 8,
  title: "Anglerfish by Sam Johnson",
  body: "The angry-looking deep sea anglerfish has a right to be cranky. It is quite possibly the ugliest animal on the planet, and it lives in what is easily Earth's most inhospitable habitat: the lonely, lightless bottom of the sea.
There are more than 200 species of anglerfish, most of which live in the murky depths of the Atlantic and Antarctic oceans, up to a mile below the surface, although some live in shallow, tropical environments. Generally dark gray to dark brown in color, they have huge heads and enormous crescent-shaped mouths filled with sharp, translucent teeth. Some angler fish can be quite large, reaching 3.3 feet (1 meter) in length. Most however are significantly smaller, often less than a foot.
Their most distinctive feature, worn only by females, is a piece of dorsal spine that protrudes above their mouths like a fishing pole—hence their name. Tipped with a lure of luminous flesh this built-in rod baits prey close enough to be snatched. Their mouths are so big and their bodies so pliable, they can actually swallow prey up to twice their own size.
The male, which is significantly smaller than the female, has no need for such an adaptation. In lieu of continually seeking the vast abyss for a female, it has evolved into a permanent parasitic mate. When a young, free-swimming male angler encounters a female, he latches onto her with his sharp teeth. Over time, the male physically fuses with the female, connecting to her skin and bloodstream and losing his eyes and all his internal organs except the testes. A female will carry six or more males on her body."
},{
  user_id: 1,
  organism_id: 9,
  title: "Coockiecutter shark FACT",
  body: "4. They have the largest teeth of all sharks.
Now, you might find this hard to believe, but it’s true. Cookiecutter sharks have the largest teeth among all sharks, even larger than the teeth of the fearsome great white, that is, in proportion to their bodies. This means cookiecutter sharks are small but they have big teeth.
Cookiecutter sharks have about 60 to 70 teeth all in all, with more teeth on the upper jaw and fewer but larger and broader teeth on the lower jaw. The shape of the teeth are also different. The upper teeth are narrow and straight like needles while the lower ones look like fence tips, straight and then pointed. All of the cookiecutter shark’s teeth have straight edges, unlike the teeth of the great white shark, the tiger shark and many other sharks, which have jagged edges like the blade of a saw."
},{
  user_id: 1,
  organism_id: 9,
  title: "Cookie sharks info",
  body: "4. They have the largest teeth of all sharks.
Now, you might find this hard to believe, but it’s true. Cookiecutter sharks have the largest teeth among all sharks, even larger than the teeth of the fearsome great white, that is, in proportion to their bodies. This means cookiecutter sharks are small but they have big teeth.
Cookiecutter sharks have about 60 to 70 teeth all in all, with more teeth on the upper jaw and fewer but larger and broader teeth on the lower jaw. The shape of the teeth are also different. The upper teeth are narrow and straight like needles while the lower ones look like fence tips, straight and then pointed. All of the cookiecutter shark’s teeth have straight edges, unlike the teeth of the great white shark, the tiger shark and many other sharks, which have jagged edges like the blade of a saw."
},{
  user_id: 1,
  organism_id: 10,
  title: "Catshark and catfish",
  body: "Dogfishes and catsharks can be difficult to differentiate. Both are typically smallish (1 to 4 feet or 30 to 120 centimetres), bottom-associated elasmobranchs sharing a similar 'sharky' shape and some of the most familiar forms occur together in coastal habitats. Adding to the confusion, some catsharks (especially those of the genus Scyliorhinus) are often referred to as 'dogfishes'. But once one has learned their respective field marks, it is relatively easy to distinguish dogfishes from catsharks."
},{
  user_id: 1,
  organism_id: 10,
  title: "Catsharks",
  body: "Dogfishes and catsharks can be difficult to differentiate. Both are typically smallish (1 to 4 feet or 30 to 120 centimetres), bottom-associated elasmobranchs sharing a similar 'sharky' shape and some of the most familiar forms occur together in coastal habitats. Adding to the confusion, some catsharks (especially those of the genus Scyliorhinus) are often referred to as 'dogfishes'. But once one has learned their respective field marks, it is relatively easy to distinguish dogfishes from catsharks."
},{
  user_id: 1,
  organism_id: 11,
  title: "Flashlight fish ",
  body: "The Flashlight Fish is also known as the Twofin Flashlight Fish or Lantern Fish and is recognized by having a black body with a blue hue to its dorsal and caudal fins. It has what appears to be a glowing smile due to the bioluminescent bacteria that inhabit the light organs found just below each eye.
These symbiotic bacteria are responsible for its glow, which is usually white but occasionally blue or yellow depending on the mood of the fish. These fish have an amazing ability to rotate the light organ within its socket in order to turn the light on and off. The light organ is used in several ways. The most common use is to communicate among themselves by increasing the frequency of the blink. Another use is in the form of defense, turning the light on, and then quickly off while darting away from a predator. The last use for their light is to attract food in the form of plankton as these tiny crustaceans are normally attracted to light.
Flashlight Fish make an unforgettable display in the aquarium. One interesting fact about this species is that in certain locales around the world, skippers follow schools of Flashlight Fish in order to safely navigate through reef passes at night.
This nocturnal fish is well suited for the specialized aquarium that contains other nocturnal fish such as similar sized Pinecone fish, Squirrelfish, Big Eyes and Cardinalfish. A low light tank or a tank with numerous hiding places is ideal. A small group of these fish work best, as they usually will adjust more quickly and take food easier when they are maintained together. Rarely aggressive among themselves or to other fish in the aquarium, this species fares best with very passive tank mates. These fish are extremely sensitive to copper sulfate and should never be exposed to this medication."
},{
  user_id: 1,
  organism_id: 11,
  title: "Flashlight fish's homes",
  body: "The Flashlight Fish is also known as the Twofin Flashlight Fish or Lantern Fish and is recognized by having a black body with a blue hue to its dorsal and caudal fins. It has what appears to be a glowing smile due to the bioluminescent bacteria that inhabit the light organs found just below each eye.
These symbiotic bacteria are responsible for its glow, which is usually white but occasionally blue or yellow depending on the mood of the fish. These fish have an amazing ability to rotate the light organ within its socket in order to turn the light on and off. The light organ is used in several ways. The most common use is to communicate among themselves by increasing the frequency of the blink. Another use is in the form of defense, turning the light on, and then quickly off while darting away from a predator. The last use for their light is to attract food in the form of plankton as these tiny crustaceans are normally attracted to light.
Flashlight Fish make an unforgettable display in the aquarium. One interesting fact about this species is that in certain locales around the world, skippers follow schools of Flashlight Fish in order to safely navigate through reef passes at night.
This nocturnal fish is well suited for the specialized aquarium that contains other nocturnal fish such as similar sized Pinecone fish, Squirrelfish, Big Eyes and Cardinalfish. A low light tank or a tank with numerous hiding places is ideal. A small group of these fish work best, as they usually will adjust more quickly and take food easier when they are maintained together. Rarely aggressive among themselves or to other fish in the aquarium, this species fares best with very passive tank mates. These fish are extremely sensitive to copper sulfate and should never be exposed to this medication."
},{
  user_id: 1,
  organism_id: 11,
  title: "Flashlight's biology",
  body: "The Flashlight Fish is also known as the Twofin Flashlight Fish or Lantern Fish and is recognized by having a black body with a blue hue to its dorsal and caudal fins. It has what appears to be a glowing smile due to the bioluminescent bacteria that inhabit the light organs found just below each eye.
These symbiotic bacteria are responsible for its glow, which is usually white but occasionally blue or yellow depending on the mood of the fish. These fish have an amazing ability to rotate the light organ within its socket in order to turn the light on and off. The light organ is used in several ways. The most common use is to communicate among themselves by increasing the frequency of the blink. Another use is in the form of defense, turning the light on, and then quickly off while darting away from a predator. The last use for their light is to attract food in the form of plankton as these tiny crustaceans are normally attracted to light.
Flashlight Fish make an unforgettable display in the aquarium. One interesting fact about this species is that in certain locales around the world, skippers follow schools of Flashlight Fish in order to safely navigate through reef passes at night.
This nocturnal fish is well suited for the specialized aquarium that contains other nocturnal fish such as similar sized Pinecone fish, Squirrelfish, Big Eyes and Cardinalfish. A low light tank or a tank with numerous hiding places is ideal. A small group of these fish work best, as they usually will adjust more quickly and take food easier when they are maintained together. Rarely aggressive among themselves or to other fish in the aquarium, this species fares best with very passive tank mates. These fish are extremely sensitive to copper sulfate and should never be exposed to this medication."
},{
  user_id: 2,
  organism_id: 12,
  title: "Gulper Eel Exam Paper",
  body: "Artist illustration of a gulper eel
Artist illustration of a gulper eel
(Wikipedia Commons public domain image)
The gulper eel is much different in appearance than most other eel species. Its pectoral fins are so tiny as to be almost nonexistent. Unlike many other deep sea creatures, it has very small eyes. It is believed that the eyes evolved to detect faint traces of light rather than form images. The gulper eel also has a very long, whip-like tail. Specimens that have been brought to the surface in fishing nets have been known to have their long tails tied into several knots. The eel uses its long tail for movement. The end of the tail is tipped with a light-producing organ known as a photophore. Through a process known as bioluminescence, the photophore glows pink and can give off occasional red flashes. Since the eel's body is not built for chasing prey, It is believed that the eel uses this light as a fishing lure to attract fish and other creatures close to its enormous mouth. When the prey is in range, the eel lunges and snaps is up in its gigantic mouth. The gulper eel can vary in length from three to six feet (about one to two meters). It is usually black or dark green in color and sometimes has a white line or groove on either side of the dorsal fin.
"
},{
  user_id: 2,
  organism_id: 12,
  title: "Gulper Eel's ABC",
  body: "Artist illustration of a gulper eel
Artist illustration of a gulper eel
(Wikipedia Commons public domain image)
The gulper eel is much different in appearance than most other eel species. Its pectoral fins are so tiny as to be almost nonexistent. Unlike many other deep sea creatures, it has very small eyes. It is believed that the eyes evolved to detect faint traces of light rather than form images. The gulper eel also has a very long, whip-like tail. Specimens that have been brought to the surface in fishing nets have been known to have their long tails tied into several knots. The eel uses its long tail for movement. The end of the tail is tipped with a light-producing organ known as a photophore. Through a process known as bioluminescence, the photophore glows pink and can give off occasional red flashes. Since the eel's body is not built for chasing prey, It is believed that the eel uses this light as a fishing lure to attract fish and other creatures close to its enormous mouth. When the prey is in range, the eel lunges and snaps is up in its gigantic mouth. The gulper eel can vary in length from three to six feet (about one to two meters). It is usually black or dark green in color and sometimes has a white line or groove on either side of the dorsal fin.
"
},{
  user_id: 1,
  organism_id: 13,
  title: "Lanternfish",
  body: "Typical of its family, with its blunt, rounded head and large eyes, the lanternfish has many light-producing organs, or photophores, arranged in short rows and groups on its body. Young fish start to develop their light-producing organs when they are about 2 cm (3/4 in) long, and the arrangement differs in males and females. The function and value of these photophores are not yet fully understood. They may help the fish to illuminate the dark depths and find prey, or may be used to confuse predators; the lanternfish has photophores on its tail and is said to lash its tail to and fro to dazzle an enemy.  Lanternfishes feed on tiny planktonic animals, making vertical migrations of as much as 400 m (1,300 ft) or more to follow the nightly movements of the plankton to surface waters. They move in large schools and, in the Mediterranean area, are known to breed from April to July."
},{
  user_id: 1,
  organism_id: 13,
  title: "Lanternfish scientific paper",
  body: "Typical of its family, with its blunt, rounded head and large eyes, the lanternfish has many light-producing organs, or photophores, arranged in short rows and groups on its body. Young fish start to develop their light-producing organs when they are about 2 cm (3/4 in) long, and the arrangement differs in males and females. The function and value of these photophores are not yet fully understood. They may help the fish to illuminate the dark depths and find prey, or may be used to confuse predators; the lanternfish has photophores on its tail and is said to lash its tail to and fro to dazzle an enemy.  Lanternfishes feed on tiny planktonic animals, making vertical migrations of as much as 400 m (1,300 ft) or more to follow the nightly movements of the plankton to surface waters. They move in large schools and, in the Mediterranean area, are known to breed from April to July."
},{
  user_id: 1,
  organism_id: 14,
  title: "Why Hatchetfish glow",
  body: "For some reason I was in the mood to talk about a bizarre animal today.  As usual, when I am looking for something super extraordinary, I head to the deep depths of the ocean.  What I found down there was the Marine Hatchetfish, which is also known as the Deep Sea Hatchetfish. You can probably tell that this fish gets its name since the shape of their body sort of resembles that of a hatchet.  Don’t worry, I had to look at the picture twice as well to try and make out the hatchet shape.
There are about 45 different species of Hatchetfish ranging in size from 2.5- 15 cm (1-6 inches).  Obviously their most distinctive feature is just how thin their bodies are which gives them the appearance of the blade of a hatchet.  I would like to note right now that it is important not to confuse these deep sea fish with the freshwater hatchetfish that you may have in your aquarium.  They are not the same although, I suppose you could try to put this marine variety into your fish tank.
Silver Hatchetfish (Wikimedia)
As with other deep sea fish the Marine Hatchetfish has large, tubular eyes which point up.  Naturally, this allows this dangerous predator to observe its surroundings from the ocean floor.  They have also adapted to the incredibly low light conditions found at these depths.  As a result their eyes are extremely sensitive to light and can make out the slightest shadows amongst the very dim light of the surface.
Of course if they become afraid of the dark then they can always make their own light.  Yep, just like some of the other odd, deep sea creatures the Marine Hatchetfish is capable of creating their own light through bioluminscence.  So what does the Hatchetfish use this light making ability for?  Well, for starters these lights are pointing down towards the ocean floor so it is believed they are largely used to hide themselves from predators.  Believe it or not they will actually adjust the level of light below them to match the surface light, which makes them practically invisible.   As well it is also believed that the lights may also play a role in the mating habits of Marine Hatchetfish but we just don’t know enough yet.  Hey!  There is a potential study for you to get some grant money to carry out.
That does it for another Wild Fact.  So far this week we have gone from the sky to the deepest parts of the see.  Perhaps tomorrow we will go somewhere in between.  Enjoy the rest of your day!"
},{
  user_id: 1,
  organism_id: 14,
  title: "Hatchetfish",
  body: "For some reason I was in the mood to talk about a bizarre animal today.  As usual, when I am looking for something super extraordinary, I head to the deep depths of the ocean.  What I found down there was the Marine Hatchetfish, which is also known as the Deep Sea Hatchetfish. You can probably tell that this fish gets its name since the shape of their body sort of resembles that of a hatchet.  Don’t worry, I had to look at the picture twice as well to try and make out the hatchet shape.
  There are about 45 different species of Hatchetfish ranging in size from 2.5- 15 cm (1-6 inches).  Obviously their most distinctive feature is just how thin their bodies are which gives them the appearance of the blade of a hatchet.  I would like to note right now that it is important not to confuse these deep sea fish with the freshwater hatchetfish that you may have in your aquarium.  They are not the same although, I suppose you could try to put this marine variety into your fish tank.
  Silver Hatchetfish (Wikimedia)
  As with other deep sea fish the Marine Hatchetfish has large, tubular eyes which point up.  Naturally, this allows this dangerous predator to observe its surroundings from the ocean floor.  They have also adapted to the incredibly low light conditions found at these depths.  As a result their eyes are extremely sensitive to light and can make out the slightest shadows amongst the very dim light of the surface.
  Of course if they become afraid of the dark then they can always make their own light.  Yep, just like some of the other odd, deep sea creatures the Marine Hatchetfish is capable of creating their own light through bioluminscence.  So what does the Hatchetfish use this light making ability for?  Well, for starters these lights are pointing down towards the ocean floor so it is believed they are largely used to hide themselves from predators.  Believe it or not they will actually adjust the level of light below them to match the surface light, which makes them practically invisible.   As well it is also believed that the lights may also play a role in the mating habits of Marine Hatchetfish but we just don’t know enough yet.  Hey!  There is a potential study for you to get some grant money to carry out.
  That does it for another Wild Fact.  So far this week we have gone from the sky to the deepest parts of the see.  Perhaps tomorrow we will go somewhere in between.  Enjoy the rest of your day!"
},{
  user_id: 1,
  organism_id: 15,
  title: "Midshipman Fish",
  body: "The midshipman (Porichthys notatus) is a small fish with a large sound. Typically around 6” they inhabit mud flats and inner-tidal zones. Like freshwater carp they can breathe both in and out of water. They are “oviparous” meaning that they deposit eggs, in nests which the males tend.
These animals reached stardom in the US about 30 years ago when the extremely loud humming sound was disrupting the lives of houseboat residents in upscale Sausalito harbor, California. The alien sound was attributed to the military, to some sinister industrial project, and even to extra-terrestrials.
The sample here is produced by two males presumably ‘courting’ a female by way of swim-bladder oscillation. The phasing of their chorus (small time domain shifts over a frequency-synchronized signal) could carry some imbedded information about breeding fitness, or it could be a way of ambiguating the actual source of the signal to predators, or…?
CD Supplement to: “Sounds of the Western North Atlantic Fishes” by Fish & Mowbray, 1970. CD ©University of Rhode Island, 2001."
},{
  user_id: 1,
  organism_id: 15,
  title: "Paper on Midshipman Fish",
  body: "The midshipman (Porichthys notatus) is a small fish with a large sound. Typically around 6” they inhabit mud flats and inner-tidal zones. Like freshwater carp they can breathe both in and out of water. They are “oviparous” meaning that they deposit eggs, in nests which the males tend.
These animals reached stardom in the US about 30 years ago when the extremely loud humming sound was disrupting the lives of houseboat residents in upscale Sausalito harbor, California. The alien sound was attributed to the military, to some sinister industrial project, and even to extra-terrestrials.
The sample here is produced by two males presumably ‘courting’ a female by way of swim-bladder oscillation. The phasing of their chorus (small time domain shifts over a frequency-synchronized signal) could carry some imbedded information about breeding fitness, or it could be a way of ambiguating the actual source of the signal to predators, or…?
CD Supplement to: “Sounds of the Western North Atlantic Fishes” by Fish & Mowbray, 1970. CD ©University of Rhode Island, 2001."
},{
  user_id: 1,
  organism_id: 15,
  title: "Grade 3 - Midshipman Fish",
  body: "The midshipman (Porichthys notatus) is a small fish with a large sound. Typically around 6” they inhabit mud flats and inner-tidal zones. Like freshwater carp they can breathe both in and out of water. They are “oviparous” meaning that they deposit eggs, in nests which the males tend.
These animals reached stardom in the US about 30 years ago when the extremely loud humming sound was disrupting the lives of houseboat residents in upscale Sausalito harbor, California. The alien sound was attributed to the military, to some sinister industrial project, and even to extra-terrestrials.
The sample here is produced by two males presumably ‘courting’ a female by way of swim-bladder oscillation. The phasing of their chorus (small time domain shifts over a frequency-synchronized signal) could carry some imbedded information about breeding fitness, or it could be a way of ambiguating the actual source of the signal to predators, or…?
CD Supplement to: “Sounds of the Western North Atlantic Fishes” by Fish & Mowbray, 1970. CD ©University of Rhode Island, 2001."
},{
  user_id: 1,
  organism_id: 16,
  title: "Pinecone Fish Families",
  body: "When most people think of bioluminescence, they tend to think of some of fearsome denizens of the deep such as the Anglerfish and its famous dangling luminescent “lure”. However this dazzling phenomenon can also be found in fish that live in shallower waters.
A good example of this is the monocentrid Pinecone Fish (Cleidopus gloriamaris) which lives in the in the tropical and sub-tropical waters of the Indian and Pacific oceans. Growing to around 6.4 inches long, its body has a striking pinecone pattern made by a covering of large, bony plate-like scales that provide a measure of protection.
All pinecone fish have bioluminescent patches on either side of their lower lip that they use to locate and attract the plankton on which they feed at night. The light is not generated by the fish itself, but by a symbiotic group of bioluminescent bacteria that live in a special organ called a photophore. The colour of the light varies depending on amount of light reaching it, and while it can’t turn the glow on and off at will, the pinecone fish can hide it by simply tucking its lower lip under its upper one when it wants to avoid unwanted attention.
The pinecone fish is popular in marine aquariums due to its unusual appearance and bioluminescence, but it is better suited to the experienced aquarist. As they are largely active at night, they prefer dimly-lit aquariums with plenty of nooks, crannies in which to hide during the day, and several peaceful tank mates. Its preferred food is live brine or ghost shrimp, although it will adapt to frozen foods with coaxing.
Thank you for reading this week's edition of FIN ('Fascinating Ichthyological Nugget'): the easiest way to propel your aquatic knowledge! We sincerely hope that you'll find these of interest and want to share them with your friends…"
},{
  user_id: 1,
  organism_id: 16,
  title: "Living with Pinecone Fish",
  body: "When most people think of bioluminescence, they tend to think of some of fearsome denizens of the deep such as the Anglerfish and its famous dangling luminescent “lure”. However this dazzling phenomenon can also be found in fish that live in shallower waters.
A good example of this is the monocentrid Pinecone Fish (Cleidopus gloriamaris) which lives in the in the tropical and sub-tropical waters of the Indian and Pacific oceans. Growing to around 6.4 inches long, its body has a striking pinecone pattern made by a covering of large, bony plate-like scales that provide a measure of protection.
All pinecone fish have bioluminescent patches on either side of their lower lip that they use to locate and attract the plankton on which they feed at night. The light is not generated by the fish itself, but by a symbiotic group of bioluminescent bacteria that live in a special organ called a photophore. The colour of the light varies depending on amount of light reaching it, and while it can’t turn the glow on and off at will, the pinecone fish can hide it by simply tucking its lower lip under its upper one when it wants to avoid unwanted attention.
The pinecone fish is popular in marine aquariums due to its unusual appearance and bioluminescence, but it is better suited to the experienced aquarist. As they are largely active at night, they prefer dimly-lit aquariums with plenty of nooks, crannies in which to hide during the day, and several peaceful tank mates. Its preferred food is live brine or ghost shrimp, although it will adapt to frozen foods with coaxing.
Thank you for reading this week's edition of FIN ('Fascinating Ichthyological Nugget'): the easiest way to propel your aquatic knowledge! We sincerely hope that you'll find these of interest and want to share them with your friends…"
},{
  user_id: 1,
  organism_id: 16,
  title: "Pines",
  body: "When most people think of bioluminescence, they tend to think of some of fearsome denizens of the deep such as the Anglerfish and its famous dangling luminescent “lure”. However this dazzling phenomenon can also be found in fish that live in shallower waters.
A good example of this is the monocentrid Pinecone Fish (Cleidopus gloriamaris) which lives in the in the tropical and sub-tropical waters of the Indian and Pacific oceans. Growing to around 6.4 inches long, its body has a striking pinecone pattern made by a covering of large, bony plate-like scales that provide a measure of protection.
All pinecone fish have bioluminescent patches on either side of their lower lip that they use to locate and attract the plankton on which they feed at night. The light is not generated by the fish itself, but by a symbiotic group of bioluminescent bacteria that live in a special organ called a photophore. The colour of the light varies depending on amount of light reaching it, and while it can’t turn the glow on and off at will, the pinecone fish can hide it by simply tucking its lower lip under its upper one when it wants to avoid unwanted attention.
The pinecone fish is popular in marine aquariums due to its unusual appearance and bioluminescence, but it is better suited to the experienced aquarist. As they are largely active at night, they prefer dimly-lit aquariums with plenty of nooks, crannies in which to hide during the day, and several peaceful tank mates. Its preferred food is live brine or ghost shrimp, although it will adapt to frozen foods with coaxing.
Thank you for reading this week's edition of FIN ('Fascinating Ichthyological Nugget'): the easiest way to propel your aquatic knowledge! We sincerely hope that you'll find these of interest and want to share them with your friends…"
},{
  user_id: 1,
  organism_id: 17,
  title: "Viper fish exam papers: Jason Burges",
  body: "When most people think of bioluminescence, they tend to think of some of fearsome denizens of the deep such as the Anglerfish and its famous dangling luminescent “lure”. However this dazzling phenomenon can also be found in fish that live in shallower waters.
A good example of this is the monocentrid Pinecone Fish (Cleidopus gloriamaris) which lives in the in the tropical and sub-tropical waters of the Indian and Pacific oceans. Growing to around 6.4 inches long, its body has a striking pinecone pattern made by a covering of large, bony plate-like scales that provide a measure of protection.
All pinecone fish have bioluminescent patches on either side of their lower lip that they use to locate and attract the plankton on which they feed at night. The light is not generated by the fish itself, but by a symbiotic group of bioluminescent bacteria that live in a special organ called a photophore. The colour of the light varies depending on amount of light reaching it, and while it can’t turn the glow on and off at will, the pinecone fish can hide it by simply tucking its lower lip under its upper one when it wants to avoid unwanted attention.
The pinecone fish is popular in marine aquariums due to its unusual appearance and bioluminescence, but it is better suited to the experienced aquarist. As they are largely active at night, they prefer dimly-lit aquariums with plenty of nooks, crannies in which to hide during the day, and several peaceful tank mates. Its preferred food is live brine or ghost shrimp, although it will adapt to frozen foods with coaxing.
Thank you for reading this week's edition of FIN ('Fascinating Ichthyological Nugget'): the easiest way to propel your aquatic knowledge! We sincerely hope that you'll find these of interest and want to share them with your friends…"
},{
  user_id: 1,
  organism_id: 17,
  title: "Viperfish",
  body: "When most people think of bioluminescence, they tend to think of some of fearsome denizens of the deep such as the Anglerfish and its famous dangling luminescent “lure”. However this dazzling phenomenon can also be found in fish that live in shallower waters.
A good example of this is the monocentrid Pinecone Fish (Cleidopus gloriamaris) which lives in the in the tropical and sub-tropical waters of the Indian and Pacific oceans. Growing to around 6.4 inches long, its body has a striking pinecone pattern made by a covering of large, bony plate-like scales that provide a measure of protection.
All pinecone fish have bioluminescent patches on either side of their lower lip that they use to locate and attract the plankton on which they feed at night. The light is not generated by the fish itself, but by a symbiotic group of bioluminescent bacteria that live in a special organ called a photophore. The colour of the light varies depending on amount of light reaching it, and while it can’t turn the glow on and off at will, the pinecone fish can hide it by simply tucking its lower lip under its upper one when it wants to avoid unwanted attention.
The pinecone fish is popular in marine aquariums due to its unusual appearance and bioluminescence, but it is better suited to the experienced aquarist. As they are largely active at night, they prefer dimly-lit aquariums with plenty of nooks, crannies in which to hide during the day, and several peaceful tank mates. Its preferred food is live brine or ghost shrimp, although it will adapt to frozen foods with coaxing.
Thank you for reading this week's edition of FIN ('Fascinating Ichthyological Nugget'): the easiest way to propel your aquatic knowledge! We sincerely hope that you'll find these of interest and want to share them with your friends…"
},{
  user_id: 2,
  organism_id: 18,
  title: "Black Dragonfish legends",
  body: "To keep a Dragonfish healthy, remember to provide them with plenty of clean, warm water, and remember that they will do better in brackish conditions than in fresh water.
Your Dragonfish's temperature should be about 80° Fahrenheit (about 26.5° Celsius), and ideally should remain between 77° and 83,° F (25° and 28° C) so you need a heater and a thermometer. Excessive temperature fluctuations, or prolonged time at especially warm or especially cold temperatures and weaken the fish, resulting in loss of appetite and a weakened immune system. An impaired immune system makes your Dragonfish more susceptible to many diseases, from easily treatable Ick to more difficult diseases such as fin and body rot.
Your Dragonfish aquarium should provide at least 25 gallons (95 liters) of space per Dragonfish, plus any space needed for any other fish. A minimum fish tank size of 50 gallons (190 liters) is recommended if you are keeping a Dragonfish. Also, a Dragonfish should be kept in a fish tank with a length of at least 4 feet (1.2 meters).
Dragonfish can be sensitive fish, so maintenance is vital. Perform your weekly 10-15% water changes, so that your Dragonfish always has clean water and any waste or uneaten food that is not processed by the filter is removed.
Your Dragonfish needs good filtration to keep the water from becoming toxic, and you need to keep the filter(s) well maintained. When selecting a filter, remember to make sure that the filter provides sufficient filtration for a tank with the large capacity that your Dragonfish requires. Many people use multiple smaller filters to maintain a large tank like this. Using several aquarium filters allows you to stager your filter maintenance so that you are not changing all of your filter media at once and risking cycling your fish tank again."
},{
  user_id: 2,
  organism_id: 18,
  title: "Black Dragonfish care basics",
  body: "To keep a Dragonfish healthy, remember to provide them with plenty of clean, warm water, and remember that they will do better in brackish conditions than in fresh water.
Your Dragonfish's temperature should be about 80° Fahrenheit (about 26.5° Celsius), and ideally should remain between 77° and 83,° F (25° and 28° C) so you need a heater and a thermometer. Excessive temperature fluctuations, or prolonged time at especially warm or especially cold temperatures and weaken the fish, resulting in loss of appetite and a weakened immune system. An impaired immune system makes your Dragonfish more susceptible to many diseases, from easily treatable Ick to more difficult diseases such as fin and body rot.
Your Dragonfish aquarium should provide at least 25 gallons (95 liters) of space per Dragonfish, plus any space needed for any other fish. A minimum fish tank size of 50 gallons (190 liters) is recommended if you are keeping a Dragonfish. Also, a Dragonfish should be kept in a fish tank with a length of at least 4 feet (1.2 meters).
Dragonfish can be sensitive fish, so maintenance is vital. Perform your weekly 10-15% water changes, so that your Dragonfish always has clean water and any waste or uneaten food that is not processed by the filter is removed.
Your Dragonfish needs good filtration to keep the water from becoming toxic, and you need to keep the filter(s) well maintained. When selecting a filter, remember to make sure that the filter provides sufficient filtration for a tank with the large capacity that your Dragonfish requires. Many people use multiple smaller filters to maintain a large tank like this. Using several aquarium filters allows you to stager your filter maintenance so that you are not changing all of your filter media at once and risking cycling your fish tank again."
},{
  user_id: 2,
  organism_id: 19,
  title: "Cnidaria",
  body: "The phylum Cnidaria (pronounced nid-AIR-ee-ah) contains approximately 9000 living species worldwide. They are among the simplest of the so-called 'higher' organisms, but are also among the most beautiful. The creatures in this phylum are radially symmetrical. This means that the parts of the body extend outward from the center like the spokes on a bicycle wheel. A common example of radial symmetry is the sea star (a member of the Echinoderm phylum) or the anemone, a Cnidarian (seen below).
The Cnidarians include the hydroids, jellyfish, anemones, and corals. All Cnidarians have tentacles with stinging cells in their tips which are used to capture and subdue prey. In fact, the phylum name 'Cnidarian' literally means 'stinging creature.' The stinging cells are called cnidocytes and contain a structure called a nematocyst. The nematocyst is a coiled thread-like stinger. When the nematocyst is called upon to fire, the thread is uncoiled, and springs straight. The harpoon-like thread punctures through the cnidocyte wall and into the prey. Most Cnidarians also have a toxin in their stinger which helps to disable the prey. The nematocyst is fired either by the tentacle touching something, or in some cases by a nerve impulse from the animal telling it to fire.
Most Cnidarian's nematocysts are not harmful to humans, as the stinger cannot penetrate sufficiently into human skin to inflict any harm. There are some jellyfish, however, which can deliver extremely painful, and in a few cases, even fatal, stings to humans."
},{
  user_id: 2,
  organism_id: 19,
  title: "Cnidaria at Sea World",
  body: "The phylum Cnidaria (pronounced nid-AIR-ee-ah) contains approximately 9000 living species worldwide. They are among the simplest of the so-called 'higher' organisms, but are also among the most beautiful. The creatures in this phylum are radially symmetrical. This means that the parts of the body extend outward from the center like the spokes on a bicycle wheel. A common example of radial symmetry is the sea star (a member of the Echinoderm phylum) or the anemone, a Cnidarian (seen below).
The Cnidarians include the hydroids, jellyfish, anemones, and corals. All Cnidarians have tentacles with stinging cells in their tips which are used to capture and subdue prey. In fact, the phylum name 'Cnidarian' literally means 'stinging creature.' The stinging cells are called cnidocytes and contain a structure called a nematocyst. The nematocyst is a coiled thread-like stinger. When the nematocyst is called upon to fire, the thread is uncoiled, and springs straight. The harpoon-like thread punctures through the cnidocyte wall and into the prey. Most Cnidarians also have a toxin in their stinger which helps to disable the prey. The nematocyst is fired either by the tentacle touching something, or in some cases by a nerve impulse from the animal telling it to fire.
Most Cnidarian's nematocysts are not harmful to humans, as the stinger cannot penetrate sufficiently into human skin to inflict any harm. There are some jellyfish, however, which can deliver extremely painful, and in a few cases, even fatal, stings to humans."
},{
  user_id: 2,
  organism_id: 20,
  title: "Sea Pens ",
  body: "The orange sea pen is a colonial cnidarian, the individual polyps having their own specialised functions. One, the primary polyp, loses its tentacles and forms both the stalk of the colony (known as the rachis), and the bulbous base with which it anchors itself deep into the soft substrate. Other polyps are known as secondary polyps. They include autozooids, which are feeding polyps, being armed with cnidocytes on the eight branching tentacles which form the feathery branches of the sea pen. They also contain the gonads. Other secondary polyps are siphonozooids, which can force water into and out of the colony to ventilate it. When the colony is disturbed, it can pump water out and retract into its bulbous base. At this time it emits bioluminescence, perhaps in order to startle a potential predator. The animal resembles an old-fashioned quill pen. It grows to a height of about 46 centimetres (18 in) and can be white, yellow or orange"
},{
  user_id: 2,
  organism_id: 20,
  title: "Sea Pens: beyond the reef",
  body: "The orange sea pen is a colonial cnidarian, the individual polyps having their own specialised functions. One, the primary polyp, loses its tentacles and forms both the stalk of the colony (known as the rachis), and the bulbous base with which it anchors itself deep into the soft substrate. Other polyps are known as secondary polyps. They include autozooids, which are feeding polyps, being armed with cnidocytes on the eight branching tentacles which form the feathery branches of the sea pen. They also contain the gonads. Other secondary polyps are siphonozooids, which can force water into and out of the colony to ventilate it. When the colony is disturbed, it can pump water out and retract into its bulbous base. At this time it emits bioluminescence, perhaps in order to startle a potential predator. The animal resembles an old-fashioned quill pen. It grows to a height of about 46 centimetres (18 in) and can be white, yellow or orange"
},{
  user_id: 2,
  organism_id: 20,
  title: "Feathers of the sea",
  body: "The orange sea pen is a colonial cnidarian, the individual polyps having their own specialised functions. One, the primary polyp, loses its tentacles and forms both the stalk of the colony (known as the rachis), and the bulbous base with which it anchors itself deep into the soft substrate. Other polyps are known as secondary polyps. They include autozooids, which are feeding polyps, being armed with cnidocytes on the eight branching tentacles which form the feathery branches of the sea pen. They also contain the gonads. Other secondary polyps are siphonozooids, which can force water into and out of the colony to ventilate it. When the colony is disturbed, it can pump water out and retract into its bulbous base. At this time it emits bioluminescence, perhaps in order to startle a potential predator. The animal resembles an old-fashioned quill pen. It grows to a height of about 46 centimetres (18 in) and can be white, yellow or orange"
},{
  user_id: 1,
  organism_id: 21,
  title: "CORAL REEF GARDENING",
  body: "Coral polyps are actually translucent animals. Reefs get their wild hues from the billions of colorful zooxanthellae (ZOH-oh-ZAN-thell-ee) algae they host. When stressed by such things as temperature change or pollution, corals will evict their boarders, causing coral bleaching that can kill the colony if the stress is not mitigated.
Corals live in tropical waters throughout the world, generally close to the surface where the sun's rays can reach the algae. While corals get most of their nutrients from the byproducts of the algae's photosynthesis, they also have barbed, venomous tentacles they can stick out, usually at night, to grab zooplankton and even small fish.
Coral reefs teem with life, covering less than one percent of the ocean floor, but supporting about 25 percent of all marine creatures. However, threats to their existence abound, and scientists estimate that human factors—such as pollution, global warming, and sedimentation—could kill 30 percent of the existing reefs in the next 30 years."
},{
  user_id: 1,
  organism_id: 21,
  title: "Coral colours",
  body: "Coral organisms, called polyps, can live on their own, but are primarily associated with the spectacularly diverse limestone communities, or reefs, they construct.
Coral polyps are tiny, soft-bodied organisms related to sea anemones and jellyfish. At their base is a hard, protective limestone skeleton called a calicle, which forms the structure of coral reefs. Reefs begin when a polyp attaches itself to a rock on the sea floor, then divides, or buds, into thousands of clones. The polyp calicles connect to one another, creating a colony that acts as a single organism. As colonies grow over hundreds and thousands of years, they join with other colonies and become reefs. Some of the coral reefs on the planet today began growing over 50 million years ago."
},{
  user_id: 1,
  organism_id: 22,
  title: "Secret life of Jellyfish",
  body: "Jennifer Purcell watches intently as the boom of the research ship Skookum slowly eases a 3-metre-long plankton net out of Puget Sound near Olympia, Washington. The marine biologist sports a rain suit, which seems odd for a sunny day in August until the bottom of the net is manoeuvred in her direction, its mesh straining from a load of moon jellyfish (Aurelia aurita). Slime drips from the bulging net, and long tentacles dangle like a scene from an alien horror film. But it does not bother Purcell, a researcher at Western Washington University's marine centre in Anacortes. Pushing up her sleeves, she plunges in her hands and begins to count and measure the messy haul with an assuredness borne from nearly 40 years studying these animals.
Biology on the high seas
Most marine scientists do not share her enthusiasm for the creatures. Purcell has spent much of her career locked in a battle to find funding and to convince ocean researchers that jellyfish deserve attention. But she hasn't had much luck. One problem is the challenges that come with trying to study organisms that are more than 95% water and get ripped apart in the nets typically used to collect other marine animals. On top of that, outside the small community of jellyfish researchers, many biologists regard the creatures as a dead end in the food web — sacs of salty water that provide almost no nutrients for predators except specialized ones such as leatherback sea turtles (Dermochelys coriacea), which are adapted to consume jellies in large quantities."
},{
  user_id: 1,
  organism_id: 22,
  title: "Jellyfish families",
  body: "Oceanic and Atmospheric Administration (NOAA) whose research had previously focused on the region's rich salmon stocks. A few years ago, they discovered that salmon prey such as herring and smelt tend to congregate in different areas of the sound from jellyfish1 and they are now trying to understand the ecological factors at work and how they might be affecting stocks of valuable fish species. But first, the researchers need to know how many jellyfish are out there. For this, the team is taking a multipronged approach. They use a seaplane to record the number and location of jellyfish aggregations, or 'smacks', scattered about the sound. And on the research ship, a plankton net has been fitted with an underwater camera to reveal how deep the smacks reach."
},{
  user_id: 1,
  organism_id: 22,
  title: "Jellyfish paper, Clydes gcse paper",
  body: "Oceanic and Atmospheric Administration (NOAA) whose research had previously focused on the region's rich salmon stocks. A few years ago, they discovered that salmon prey such as herring and smelt tend to congregate in different areas of the sound from jellyfish1 and they are now trying to understand the ecological factors at work and how they might be affecting stocks of valuable fish species. But first, the researchers need to know how many jellyfish are out there. For this, the team is taking a multipronged approach. They use a seaplane to record the number and location of jellyfish aggregations, or 'smacks', scattered about the sound. And on the research ship, a plankton net has been fitted with an underwater camera to reveal how deep the smacks reach."
},{
  user_id: 1,
  organism_id: 23,
  title: "Jelly coms",
  body: "Oceanic and Atmospheric Administration (NOAA) whose research had previously focused on the region's rich salmon stocks. A few years ago, they discovered that salmon prey such as herring and smelt tend to congregate in different areas of the sound from jellyfish1 and they are now trying to understand the ecological factors at work and how they might be affecting stocks of valuable fish species. But first, the researchers need to know how many jellyfish are out there. For this, the team is taking a multipronged approach. They use a seaplane to record the number and location of jellyfish aggregations, or 'smacks', scattered about the sound. And on the research ship, a plankton net has been fitted with an underwater camera to reveal how deep the smacks reach."
},{
  user_id: 1,
  organism_id: 23,
  title: "Combs",
  body: "Ctenophores, variously known as comb jellies, sea gooseberries, sea walnuts, or Venus's girdles, are voracious predators. Unlike cnidarians, with which they share several superficial similarities, they lack stinging cells. Instead, in order to capture prey, ctenophores possess sticky cells called colloblasts. In a few species, special cilia in the mouth are used for biting gelatinous prey.
The phylogenetic position of ctenophores has been, and still is, in dispute. Ctenophores have a pair of anal pores, which have sometimes been interpreted as homologous with the anus of bilaterian animals (worms, humans, snails, fish, etc.). Furthermore, they possess a third tissue layer between the endoderm and ectoderm, another characteristic reminiscent of the Bilateria. However, molecular data has contradicted this view, although only weakly. Therefore, this is an active area of research.Oceanic and Atmospheric Administration (NOAA) whose research had previously focused on the region's rich salmon stocks. A few years ago, they discovered that salmon prey such as herring and smelt tend to congregate in different areas of the sound from jellyfish1 and they are now trying to understand the ecological factors at work and how they might be affecting stocks of valuable fish species. But first, the researchers need to know how many jellyfish are out there. For this, the team is taking a multipronged approach. They use a seaplane to record the number and location of jellyfish aggregations, or 'smacks', scattered about the sound. And on the research ship, a plankton net has been fitted with an underwater camera to reveal how deep the smacks reach."
},{
  user_id: 1,
  organism_id: 24,
  title: "Echinoderm",
  body: "Echinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms have tentacle-like structures called tube feet with suction pads situated at their extremities. These tube feet are hydraulically controlled by a remarkable vascular system. This system supplies water through canals of small muscular tubes to the tube feet (= ambulacral feet). As the tube feet press against a moving object, water is withdrawn from them, resulting in a suction effect. When water returns to the canals, suction is released. The resulting locomotion is generally very slow."
},{
  user_id: 2,
  organism_id: 24,
  title: "Echinodermata and Starfish",
  body: "Echinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms have tentacle-like structures called tube feet with suction pads situated at their extremities. These tube feet are hydraulically controlled by a remarkable vascular system. This system supplies water through canals of small muscular tubes to the tube feet (= ambulacral feet). As the tube feet press against a moving object, water is withdrawn from them, resulting in a suction effect. When water returns to the canals, suction is released. The resulting locomotion is generally very slow."
},{
  user_id: 1,
  organism_id: 25,
  title: "Lobers that glow in the sea",
  body: "Echinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 25,
  title: "Crustaceans",
  body: "Echinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 26,
  title: "Arrow worms",
  body: "........."
},{
  user_id: 1,
  organism_id: 27,
  title: "Clams",
  body: "Echinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 27,
  title: "Biolumenecent Clams",
  body: "Echinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 28,
  title: "Sea Slugs",
  body: "Sea slugs are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 28,
  title: "Sea Slugs - cutest things in the sea",
  body: "Sea slugs are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 2,
  organism_id: 29,
  title: "Octopus lives",
  body: "Octopus lives are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 2,
  organism_id: 29,
  title: "Why they are the smartest sea creatures",
  body: "Octopus lives are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 2,
  organism_id: 29,
  title: "Octopi",
  body: "Octopus lives are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 2,
  organism_id: 30,
  title: "Vampire Squid",
  body: "Squid lives are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 2,
  organism_id: 30,
  title: "Vampire Squid: Evil genius",
  body: "Vampire squid lives are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 31,
  title: "Bobtail squids skin colour",
  body: "bobtail skins are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 31,
  title: "Bobtail squids",
  body: "bobtail skins are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 31,
  title: "Bobtails",
  body: "bobtail skins are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 32,
  title: "Giants of the sea",
  body: "Colossal skins are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 32,
  title: "Giants: Colossal squids",
  body: "Colossal skins are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 33,
  title: "Sparkling squids",
  body: "Colossal skins are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 33,
  title: "Sparkling sea creatures",
  body: "Colossal skins are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
EchinodermsEchinoderms are characterized by radial symmetry, several arms (5 or more, mostly grouped 2 left - 1 middle - 2 right) radiating from a central body (= pentamerous). The body actually consists of five equal segments, each containing a duplicate set of various internal organs. They have no heart, brain, nor eyes, but some brittle stars seem to have light sensitive parts on their arms. Their mouth is situated on the underside and their anus on top (except feather stars, sea cucumbers and some urchins).
Echinoderms"
},{
  user_id: 1,
  organism_id: 34,
  title: "Fungi - Biolumenecent",
  body: "Of all the wild and wonderful things to find in the wilderness, mushrooms are by far the most bizarre. They sprout up in wooded areas throughout the world, adding a fantastical element with their strange appearance. They will catch your attention in the daytime – but wait until you see these fungi at night.
There's even a name for the mysterious glow from mushrooms: foxfire. Scientists have hypothesized that the bright bluish-green light is meant to attract insects.
More than 70 species of bioluminescent mushrooms exist on Earth, and though some may be drab during the daytime, all are mesmerizing at night. Take a look at some of the most supernatural of nature's night lights."
},{
  user_id: 1,
  organism_id: 34,
  title: "Shroom room",
  body: "Of all the wild and wonderful things to find in the wilderness, mushrooms are by far the most bizarre. They sprout up in wooded areas throughout the world, adding a fantastical element with their strange appearance. They will catch your attention in the daytime – but wait until you see these fungi at night.
There's even a name for the mysterious glow from mushrooms: foxfire. Scientists have hypothesized that the bright bluish-green light is meant to attract insects.
More than 70 species of bioluminescent mushrooms exist on Earth, and though some may be drab during the daytime, all are mesmerizing at night. Take a look at some of the most supernatural of nature's night lights."
},{
  user_id: 1,
  organism_id: 34,
  title: "Mushrooms: Callums gcse paper",
  body: "Of all the wild and wonderful things to find in the wilderness, mushrooms are by far the most bizarre. They sprout up in wooded areas throughout the world, adding a fantastical element with their strange appearance. They will catch your attention in the daytime – but wait until you see these fungi at night.
There's even a name for the mysterious glow from mushrooms: foxfire. Scientists have hypothesized that the bright bluish-green light is meant to attract insects.
More than 70 species of bioluminescent mushrooms exist on Earth, and though some may be drab during the daytime, all are mesmerizing at night. Take a look at some of the most supernatural of nature's night lights."
},{
  user_id: 1,
  organism_id: 35,
  title: "Vibrionaceae",
  body: "The lights are made by filling small transparent cases with a gel that contains bioluminescent bacteria. Glowee uses a bacterium called Aliivibrio fischeri, which gives marine animals such as the Hawaiian bobtail squid the ability to glow with a blue-green light."
},{
  user_id: 1,
  organism_id: 35,
  title: "Vibrionaceae - pretty bacteria",
  body: "The lights are made by filling small transparent cases with a gel that contains bioluminescent bacteria. Glowee uses a bacterium called Aliivibrio fischeri, which gives marine animals such as the Hawaiian bobtail squid the ability to glow with a blue-green light."
},{
  user_id: 1,
  organism_id: 36,
  title: "Shewanella",
  body: "Blue ocean glow caused by myriad tiny organisms, such as Noctiluca. Bioluminescence is the production of light by living organisms. This list of bioluminescent organisms is organized by environment, covering terrestrial, marine and microorganisms."
},{
  user_id: 1,
  organism_id: 36,
  title: "Baceria like Shewanellaceae",
  body: "Blue ocean glow caused by myriad tiny organisms, such as Noctiluca. Bioluminescence is the production of light by living organisms. This list of bioluminescent organisms is organized by environment, covering terrestrial, marine and microorganisms."
},{
  user_id: 2,
  organism_id: 37,
  title: "Protist",
  body: "Blue ocean glow caused by myriad tiny organisms, such as Noctiluca. Bioluminescence is the production of light by living organisms. This list of bioluminescent organisms is organized by environment, covering terrestrial, marine and microorganisms."
}])
