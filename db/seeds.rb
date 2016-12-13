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
  body: "The Lampyridae are a family of insects in the beetle order Coleoptera. They are winged beetles, commonly called fireflies or lightning bugs for their conspicuous use of bioluminescence during twilight to attract mates or prey. Fireflies produce a 'cold light', with no infrared or ultraviolet frequencies. This chemically produced light from the lower abdomen may be yellow, green, or pale red, with wavelengths from 510 to 670 nanometers."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/clickBeetle_zpsnqdiqq7b.png",
  name: "Click Beetle",
  phylum: "Arthropoda",
  order: "Coleoptera",
  family: "Elateridae",
  genus: "Pyrophorus",
  group_id: 1,
  body: "Pyrophorus (also known as Fire Beetles) is a genus of click beetle (family Elateridae). They are one of several genera in the tribe Pyrophorini, all of which are bioluminescent. Their bioluminescence is similar to that of another group of beetles, the fireflies, although click beetles do not flash, but remain constantly glowing (though they can control the intensity; for example, they become brighter when touched by a potential predator). They have two luminescent spots at the posterior corners of the pronotum, and another ventral spot. Bioluminescent click beetles are found throughout tropical and subtropical America, as well as Texas and Florida.
  Adult Pyrophorus beetles feed on pollen and sometimes small insects, such as aphids or scale insects. Their larvae feed on various plant materials and invertebrates, including the larvae of other beetles. Eggs are luminous and are deposited either on or in the soil. Larvae, like eggs, are luminous. They grow slowly and pupate after an uncertain period of time, but perhaps several years after hatching.
  Pyrophorus nyctophanus larvae live in tunnels in the outer layers of termite mounds on the cerrado of Brazil. During summertime they glow at night, attracting prey in the form of other insects."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/gloworm_zps561he2wp.png",
  name: "Glowworm",
  phylum: "",
  order: "",
  family: "",
  genus: "",
  group_id: 1,
  body: "Glowworm or glow-worm is the common name for various groups of insect larvae and adult larviform females that glow through bioluminescence. They include members of the families Elateridae, Lampyridae, Phengodidae, and Rhagophthalmidae among beetles; as well as members of the genera Arachnocampa, Keroplatus, and Orfelia among keroplatid fungus gnats."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/railroad_zpsjsbehkif.png",
  name: "Railroad Worm",
  phylum: "Arthropoda",
  order: "Coleoptera",
  family: "Phengodidae",
  genus: "Phrixothrix",
  group_id: 1,
  body: "A railroad worm is a larva or larviform female adult of a beetle of the genus Phrixothrix in the family Phengodidae, characterized by the possession of two different colors of bioluminescence. It has the appearance of a caterpillar. The eleven pairs of luminescent organs on their second thoracic segment through their ninth abdominal segment can glow yellowish-green, while the pair on their head can glow red;[1] this is probably due to different luciferases in their bodies, as the reaction substrate, called luciferin, is the same.
  The 'railroad worm' name arises because these glowing spots along the body resemble the windows of train cars internally illuminated in the night. The light emissions are believed to be a warning signal to nocturnal predators of their unpalatability.
  The term 'railroad worm' is also sometimes applied to the apple maggot."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/moxy_zpssxapzqsi.png",
  name: "Motyxia",
  phylum: "Arthropoda",
  order: "Polydesmida",
  family: "Xystodesmidae",
  genus: "Motyxia",
  group_id: 1,
  body: "Motyxia is a genus of cyanide-producing millipedes (collectively known as Sierra luminous millipedes or motyxias) that are endemic to the southern Sierra Nevada, Tehachapi, and Santa Monica mountain ranges of California. Motyxias are blind and produce the poison cyanide, like all members of the Polydesmida. All species have the ability to glow brightly: some of the few known instances of bioluminescence in millipedes."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/snail_zpsg9swaneu.png",
  name: "Quantula striata",
  phylum: "Mollusca",
  order: "",
  family: "Dyakiidae",
  genus: "Quantula",
  group_id: 1,
  body: "Quantula striata, also known as Dyakia striata, is a species of medium-sized, air-breathing, tropical land snail. It is a terrestrial, pulmonate, gastropod mollusk in the family Dyakiidae. This species appears to be unique among terrestrial gastropods in that it is bioluminescent: Its eggs glow in the dark, and juveniles and most adults give off flashes of green light. It is the only species in the genus Quantula."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/annelid_zpsiunsltxb.png",
  name: "Annelid",
  phylum: "Lophotrochozoa",
  order: "",
  family: "",
  genus: "",
  group_id: 1,
  body: "The annelids (Annelida, from Latin anellus, 'little ring'), also known as the ringed worms or segmented worms, are a large phylum, with over 17,000 extant species including ragworms, earthworms, and leeches. The species exist in and have adapted to various ecologies - some in marine environments as distinct as tidal zones and hydrothermal vents, others in fresh water, and yet others in moist terrestrial environments."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/anglerfish_zpsxid43may.png",
  name: "Anglerfish",
  phylum: "Chordata",
  order: "Lophiiformes",
  family: "",
  genus: "",
  group_id: 2,
  body: "Anglerfishes are fish of the teleost order Lophiiformes /ˌlɒfiːəˈfɔːrmiːz/. They are bony fish named for their characteristic mode of predation, in which a fleshy growth from the fish's head (the esca or illicium) acts as a lure.
  Some anglerfish are also notable for extreme sexual dimorphism and sexual parasitism of the small male on the much larger female, seen in the suborder Ceratioidei. In these species, males may be several orders of magnitude smaller than females.
  Anglerfish occur worldwide. Some are pelagic, while others are benthic; some live in the deep sea (e.g., Ceratiidae), while others on the continental shelf (e.g., the frogfishes Antennariidae and the monkfish/goosefish Lophiidae). Pelagic forms are most laterally compressed, whereas the benthic forms are often extremely dorsoventrally compressed (depressed), often with large upward-pointing mouths."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/sharkBelly_zps0pinoglg.png",
  name: "Cookiecutter shark",
  phylum: "Chordata",
  order: "Squaliformes",
  family: "Dalatiidae",
  genus: "Isistius",
  group_id: 2,
  body: "Cookiecutter shark (Isistius brasiliensis), also called the cigar shark, is a species of small dogfish shark in the family Dalatiidae. This shark occurs in warm, oceanic waters worldwide, particularly near islands, and has been recorded as deep as 3.7 km (2.3 mi). It migrates vertically up to 3 km (1.9 mi) every day, approaching the surface at dusk and descending with the dawn. Reaching only 42–56 cm (16.5–22 in) in length, the cookiecutter shark has a long, cylindrical body with a short, blunt snout, large eyes, two tiny spineless dorsal fins, and a large caudal fin. It is dark brown, with light-emitting photophores covering its underside except for a dark 'collar' around its throat and gill slits."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/catfish_zpsrjqafhq2.png",
  name: "Catshark",
  phylum: "Chordata",
  order: "Carcharhiniformes",
  family: "Scyliorhinidae",
  genus: "",
  group_id: 2,
  body: "Catsharks are ground sharks of the family Scyliorhinidae. They are one of the largest families of sharks with around 160 species placed in 17 genera. Although they are generally known as catsharks, many species are commonly called dogfish or gato. They feed on benthic invertebrates and smaller fish. Catsharks are not harmful to humans."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/nicefish_zpsxmsz4iqa.png",
  name: "Flashlight fish",
  phylum: "",
  order: "",
  family: "",
  genus: "",
  group_id: 2,
  body: "Flashlight fish is a common name for several fish and may refer to:
  Anomalopidae, a family known as the flashlight fishes, with many species referred to as flashlight fish, especially
  Anomalops katoptron, from the Pacific Ocean.
  Photoblepharon palpebratum, from the eastern Indian Ocean and the Pacific
  Photoblepharon steinitzi, from the western Indian Ocean
  Myctophidae, a family sometimes known as flashlight fishes, with some species referred to as flashlight fish
  Electrona risso (chubby flashlight fish), found in oceans around the world
  Protomyctophum crockeri, found in the North Pacific
  Spotted lantern fish (Myctophum punctatum), found in deep waters of the Atlantic and Mediterranean Sea
  Stomiidae, a family with species referred to as flashlight fish
  Photostomias, found in deep waters"
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/gulperEel_zpsy25ledao.png",
  name: "Gulper eel",
  phylum: "Chordata",
  order: "Saccopharyngiformes",
  family: "",
  genus: "",
  group_id: 2,
  body: "Saccopharyngiformes is an order of unusual ray-finned fish, superficially similar to eels, but with multiple internal differences. Most of the fish in this order are deep-sea types known from only a handful of specimens, such as the pelican eel. Some species are bioluminescent. Some, such as the 'swallowers', can live as deep as 3,000 m (10,000 feet) in the ocean, well into the aphotic zone. Saccopharyngiformes were found by deep sea fishermen's nets. Extensive research has not been conducted on them due to being indirectly observed.
  Saccopharyngiforms lack several bones, such as the symplectic bone, the bones of the opercle, and ribs. They also have no scales, pelvic fins or swim bladder. The jaws are quite large, lined with small teeth, and several types are notable for being able to consume fish larger than themselves. Their myomeres (muscle segments) are V-shaped instead of W-shaped as in all other fishes, and their lateral lines have no pores, instead being modified to groups of elevated tubules."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/lightFish_zpsdr3tozng.png",
  name: "Lanternfish",
  phylum: "Chordata",
  order: "Myctophiformes",
  family: "Myctophidae",
  genus: "Elateriformia",
  group_id: 2,
  body: "Lanternfishes (or myctophids, from the Greek mykter, 'nose' and ophis, 'serpent') are small mesopelagic fish of the large family Myctophidae. One of two families in the order Myctophiformes, the Myctophidae are represented by 246 species in 33 genera, and are found in oceans worldwide. They are aptly named after their conspicuous use of bioluminescence. Their sister family, the Neoscopelidae, are much fewer in number but superficially very similar; at least one neoscopelid shares the common name 'lanternfish': the large-scaled lantern fish, Neoscopelus macrolepidotus.
  Sampling via deep trawling indicates lanternfish account for as much as 65% of all deep-sea fish biomass. Indeed, lanternfish are among the most widely distributed, populous, and diverse of all vertebrates, playing an important ecological role as prey for larger organisms. With an estimated global biomass of 550 - 660 million metric tonnes, several times the entire world fisheries catch, lanternfish also account for much of the biomass responsible for the deep scattering layer of the world's oceans. In the Southern Ocean, myctophids provide an alternative food resource to krill for predators such as squid and the king penguin. Although plentiful and prolific, currently only a few commercial lanternfish fisheries exist: limited operations off South Africa, in the sub-Antarctic, and in the Gulf of Oman."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/uglyFisheat_zps592703gr.png",
  name: "Marine hatchetfish",
  phylum: "Chordata",
  order: "Stomiiformes",
  family: "Sternoptychidae",
  genus: "",
  group_id: 2,
  body: "Marine hatchetfishes or deep-sea hatchetfishes are small deep-sea mesopelagic ray-finned fish of the stomiiform subfamily Sternoptychinae. They should not be confused with the freshwater hatchetfishes, which are not particularly closely related Teleostei in the characiform family Gasteropelecidae.
  The scientific name means 'Sternoptyx-subfamily', from Sternoptyx (the type genus) + the standard animal family suffix '-inae'. It ultimately derives from Ancient Greek stérnon (στέρνον, 'breast') + ptýx (πτύξ, 'a fold/crease') + Latin forma ('external form'), the Greek part in reference to the thorax shape of marine hatchetfishes."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/tinyFish_zpsfc74khjc.png",
  name: "Midshipman fish",
  phylum: "Chordata",
  order: "Batrachoidiformes",
  family: "Batrachoididae",
  genus: "Porichthys",
  group_id: 2,
  body: "Midshipman fish belong to the genus Porichthys of toadfishes. They are distinguished by having photophores (which they use to attract prey and after which they are named, reminding some of a naval uniform's buttons) and four lateral lines. Typical midshipman fishes, such as the plainfin midshipman (Porichthys notatus), are nocturnal and bury themselves in sand or mud in the intertidal zone during the day. At night they float just above the seabed. Some species have venomous dorsal spines and are capable of inflicting serious injuries if handled.
  There are three genders of midshipman fish: females, type I males, and type II males. Type I and type II males have different reproductive strategies, and can be distinguished from each other based on physical characteristics. Type I males are eight times larger in body mass, and have much larger vocal organs. Type II males’ reproductive organs are seven times larger in size than those of type I males. Female and type II male midshipman fish can be distinguished from each other by the female’s slightly larger size, and the type II male midshipman’s large reproductive organs."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/pinecone_zpsrqgpcanl.png",
  name: "Pinecone fish",
  phylum: "Chordata",
  order: "Beryciformes",
  family: "Monocentridae",
  genus: "Cleidopus",
  group_id: 2,
  body: "Pinecone fishes are small and unusual beryciform marine fish of the family Monocentridae. The family contains just four species in two genera, one of which is monotypic. Their distribution is limited to tropical and subtropical waters of the Indo-Pacific. Pinecone fishes are popular subjects of public aquaria, but are both expensive and considered a challenge for the hobbyist to maintain."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/eelguy_zpscykkfczp.png",
  name: "Viperfish",
  phylum: "Chordata",
  order: "Stomiiformes",
  family: "Stomiidae",
  genus: "Chauliodus",
  group_id: 2,
  body: "A viperfish is any species of marine fish in the genus Chauliodus. Viperfish are characterized by long, needle-like teeth and hinged lower jaws. A typical viperfish grows to lengths of 30 to 60 cm (12 to 23.5 in). Viperfish stay near lower depths (250–5,000 feet [80–1,520 m]) in the daytime and shallower depths at night, primarily in tropical and temperate waters. Viperfish are believed to attack prey after luring them within range with light-producing organs called photophores, which are located along the ventral sides of its body, and with a prominent photophore at the end of a long spine in the dorsal fin reminiscent of the illicium of the unrelated deepsea anglerfishes. The viperfish flashes this natural light on and off, at the same time moving its dorsal spine around like a fishing rod and hanging completely still in the water. It also uses the light producing organ to communicate to potential mates and rivals."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/dragonFish_zps9qgmfbfd.png",
  name: "Black dragonfish",
  phylum: "Chordata",
  order: "Stomiiformes",
  family: "Stomiidae",
  genus: "Idiacanthus",
  group_id: 2,
  body: "Idiacanthus atlanticus: Idiacanthus atlanticus (commonly known as the black dragonfish) is a barbeled dragonfish of the family Stomiidae, found circumglobally in southern subtropical and temperate oceans between latitudes 25°S and 60°S, at depths down to 2,000 metres (6,600 ft). The species is sexually dimorphic: females are black with six stripes; male are brown, and lack the females' canine teeth, pelvic fins and barbel. Females are believed to make a diel vertical migration from deeper than 500 metres (1,600 ft) by day to surface waters at night, whereas males do not migrate, remaining below 1,000 metres (3,300 ft) at all times.
  Length is up to 40 centimetres (16 in) for the female, but only 5 centimetres (2.0 in) for the male. Black dragonfish are bioluminescent, but unlike most such predators, which use their light primarily to attract prey, they can see their own light. As a result, the fish can use their light to hunt. The light is nearly in the infrared and barely visible to the human eye.
  In the larval stage, the eyes of the larvae appear as long stalks that dangle out of the body. Eventually, they retreat as the fish ages and reaches maturity."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/domeJelly_zpsgak6pdjy.png",
  name: "Cnidaria",
  phylum: "Cnidaria",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: "Cnidaria (/naɪˈdɛəriə/) is a phylum containing over 10,000 species of animals found exclusively in aquatic (freshwater and marine) environments: they are predominantly marine species. Their distinguishing feature is cnidocytes, specialized cells that they use mainly for capturing prey. Their bodies consist of mesoglea, a non-living jelly-like substance, sandwiched between two layers of epithelium that are mostly one cell thick. They have two basic body forms: swimming medusae and sessile polyps, both of which are radially symmetrical with mouths surrounded by tentacles that bear cnidocytes. Both forms have a single orifice and body cavity that are used for digestion and respiration. Many cnidarian species produce colonies that are single organisms composed of medusa-like or polyp-like zooids, or both (hence they are trimorphic). Cnidarians' activities are coordinated by a decentralized nerve net and simple receptors. Several free-swimming species of Cubozoa and Scyphozoa possess balance-sensing statocysts, and some have simple eyes. Not all cnidarians reproduce sexually, with many species having complex life cycles of asexual polyp stages and sexual medusae. Some, however, omit either the polyp or the medusa stage.
  Cnidarians were formerly grouped with ctenophores in the phylum Coelenterata, but increasing awareness of their differences caused them to be placed in separate phyla.[when?] Cnidarians are classified into four main groups: the almost wholly sessile Anthozoa (sea anemones, corals, sea pens); swimming Scyphozoa (jellyfish); Cubozoa (box jellies); and Hydrozoa, a diverse group that includes all the freshwater cnidarians as well as many marine forms, and has both sessile members, such as Hydra, and colonial swimmers, such as the Portuguese Man o' War. Staurozoa have recently been recognised as a class in their own right rather than a sub-group of Scyphozoa, and there is debate about whether Myxozoa and Polypodiozoa are cnidarians or closer to bilaterians (more complex animals).
  Most cnidarians prey on organisms ranging in size from plankton to animals several times larger than themselves, but many obtain much of their nutrition from dinoflagellates, and a few are parasites. Many are preyed on by other animals including starfish, sea slugs, fish and turtles. Many scleractinian corals—which form the structural foundation for coral reefs—possess polyps that are filled with zooxanthellae. While reef-forming corals are almost entirely restricted to warm and shallow marine waters, other cnidarians can be found at great depths, in polar regions, and in freshwater.
  Recent phylogenetic analyses support monophyly of cnidarians, as well as the position of cnidarians as the sister group of bilaterians. Fossil cnidarians have been found in rocks formed about 580 million years ago, and other fossils show that corals may have been present shortly before 490 million years ago and diversified a few million years later. However, molecular clock analysis of mitochondrial genes suggests a much older age for the crown group of cnidarians, estimated around 741 million years ago, almost 200 million years before the Cambrian period as well as any fossils"
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/seaPen_zpsiaidicqt.png",
  name: "Sea Pen",
  phylum: "Cnidaria",
  order: "Pennatulacea",
  family: "Lampyridae",
  genus: "",
  group_id: 3,
  body: "As octocorals, sea pens are colonial animals with multiple polyps (which look somewhat like miniature sea anemones), each with eight tentacles. Unlike other octocorals, however, a sea pen's polyps are specialized to specific functions: a single polyp develops into a rigid, erect stalk (the rachis) and loses its tentacles, forming a bulbous 'root' or peduncle at its base. The other polyps branch out from this central stalk, forming water intake structures (siphonozooids), feeding structures (autozooids) with nematocysts, and reproductive structures. The entire colony is fortified by calcium carbonate in the form of spicules and a central axial rod.
  Using their root-like peduncles to anchor themselves in sandy or muddy substrate, the exposed portion of sea pens may rise up to 2 metres (6.6 ft) in some species, such as the tall sea pen (Funiculina quadrangularis). Sea pens are sometimes brightly coloured; the orange sea pen (Ptilosarcus gurneyi) is a notable example. Rarely found above depths of 10 metres (33 ft), sea pens prefer deeper waters where turbulence is less likely to uproot them. Some species may inhabit depths of 2,000 metres (6,600 ft) or more."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/coral_zpswmqcwh78.png",
  name: "Coral",
  phylum: "Cnidaria",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: "Corals are marine invertebrates in the class Anthozoa of phylum Cnidaria. They typically live in compact colonies of many identical individual polyps. The group includes the important reef builders that inhabit tropical oceans and secrete calcium carbonate to form a hard skeleton.
  A coral 'group' is a colony of myriad genetically identical polyps. Each polyp is a sac-like animal typically only a few millimeters in diameter and a few centimeters in length. A set of tentacles surround a central mouth opening. An exoskeleton is excreted near the base. Over many generations, the colony thus creates a large skeleton that is characteristic of the species. Individual heads grow by asexual reproduction of polyps. Corals also breed sexually by spawning: polyps of the same species release gametes simultaneously over a period of one to several nights around a full moon.
  Although some corals can catch small fish and plankton, using stinging cells on their tentacles, most corals obtain the majority of their energy and nutrients from photosynthetic unicellular dinoflagellates in the genus Symbiodinium that live within their tissues. These are commonly known as zooxanthellae and the corals that contain them are zooxanthellate corals. Such corals require sunlight and grow in clear, shallow water, typically at depths shallower than 60 metres (200 ft). Corals are major contributors to the physical structure of the coral reefs that develop in tropical and subtropical waters, such as the enormous Great Barrier Reef off the coast of Queensland, Australia.
  Other corals do not rely on zooxanthellae and can live in much deeper water, with the cold-water genus Lophelia surviving as deep as 3,000 metres (9,800 ft). Some have been found on the Darwin Mounds, north-west of Cape Wrath, Scotland. Corals have also been found as far north as off the coast of Washington State and the Aleutian Islands."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/JellyFancy_zps06stncjg.png",
  name: "Jellyfish",
  phylum: "Cnidaria",
  order: "Leptomedusae",
  family: "Aequoreidae",
  genus: "Aequorea",
  group_id: 3,
  body: "Aequorea victoria, also sometimes called the crystal jelly, is a bioluminescent hydrozoan jellyfish, or hydromedusa, that is found off the west coast of North America.
  The species is best known as the source of two proteins involved in bioluminescence, aequorin, a photoprotein, and green fluorescent protein (GFP). Their discoverers, Osamu Shimomura and colleagues, won the 2008 Nobel Prize in Chemistry for their work on GFP."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/combJelly_zpsm8kszzm4.png",
  name: "Comb Jellies",
  phylum: "Ctenophora",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: "Ctenophora (/tᵻˈnɒfərə/; singular ctenophore, /ˈtɛnəfɔːr/ or /ˈtiːnəfɔːr/; from the Greek κτείς kteis 'comb' and φέρω pherō 'carry'; commonly known as comb jellies) is a phylum of invertebrate animals that live in marine waters worldwide. Their most distinctive feature is the ‘combs’ – groups of cilia which they use for swimming – they are the largest animals that swim by means of cilia. Adults of various species range from a few millimeters to 1.5 m (4 ft 11 in) in size. Like cnidarians, their bodies consist of a mass of jelly, with one layer of cells on the outside and another lining the internal cavity. In ctenophores, these layers are two cells deep, while those in cnidarians are only one cell deep. Some authors combined ctenophores and cnidarians in one phylum, Coelenterata, as both groups rely on water flow through the body cavity for both digestion and respiration. Increasing awareness of the differences persuaded more recent authors to classify them as separate phyla.
  Ctenophores also resemble cnidarians in having a decentralized nerve net rather than a brain. Genomic studies have suggested that the neurons of Ctenophora, which differ in many ways from other animal neurons, evolved independently from those of the other animals.
  Almost all ctenophores are predators, taking prey ranging from microscopic larvae and rotifers to the adults of small crustaceans; the exceptions are juveniles of two species, which live as parasites on the salps on which adults of their species feed. In favorable circumstances, ctenophores can eat ten times their own weight in a day. Only 100–150 species have been validated, and possibly another 25 have not been fully described and named. The textbook examples are cydippids with egg-shaped bodies and a pair of retractable tentacles fringed with tentilla ('little tentacles') that are covered with colloblasts, sticky cells that capture prey. The phylum has a wide range of body forms, including the flattened, deep-sea platyctenids, in which the adults of most species lack combs, and the coastal beroids, which lack tentacles and prey on other ctenophores by using huge mouths armed with groups of large, stiffened cilia that act as teeth. These variations enable different species to build huge populations in the same area, because they specialize in different types of prey, which they capture by as wide a range of methods as spiders use."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/starfish_zpstvnkefrv.png",
  name: "Echinoderm",
  phylum: "Echinodermata",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: "Echinoderm is the common name given to any member of the phylum Echinodermata (from Ancient Greek, ἐχῖνος, echinos – 'hedgehog' and δέρμα, derma – 'skin') of marine animals. The adults are recognizable by their (usually five-point) radial symmetry, and include such well-known animals as sea stars, sea urchins, sand dollars, and sea cucumbers, as well as the sea lilies or 'stone lilies'. Echinoderms are found at every ocean depth, from the intertidal zone to the abyssal zone. The phylum contains about 7000 living species, making it the second-largest grouping of deuterostomes (a superphylum), after the chordates (which include the vertebrates, such as birds, fishes, mammals, and reptiles). Echinoderms are also the largest phylum that has no freshwater or terrestrial (land-based) representatives.
  Aside from the hard-to-classify Arkarua (a Precambrian animal with echinoderm-like pentamerous radial symmetry), the first definitive members of the phylum appeared near the start of the Cambrian.
  The echinoderms are important both biologically and geologically. Biologically, there are few other groupings so abundant in the biotic desert of the deep sea, as well as shallower oceans. Most echinoderms are able to regenerate tissue, organs, limbs, and reproduce asexually; in some cases, they can undergo complete regeneration from a single limb. Geologically, the value of echinoderms is in their ossified skeletons, which are major contributors to many limestone formations, and can provide valuable clues as to the geological environment. They were the most used species in regenerative research in the 19th and 20th centuries. Further, it is held by some scientists that the radiation of echinoderms was responsible for the Mesozoic Marine Revolution."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/crustacean_zpsxzwcxrid.png",
  name: "Crustacean",
  phylum: "Arthropoda",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: "Crustaceans (Crustacea /krʌˈsteɪʃə/) form a very large, very diverse arthropod taxon which includes such familiar animals as crabs, lobsters, crayfish, shrimp, krill, woodlice and barnacles. The crustacean group is usually treated as a subphylum, and thanks to recent molecular studies it is now well accepted that the crustacean group is paraphyletic, and comprises all animals in the Pancrustacea clade other than hexapods. In other words, some crustaceans are more closely related to insects and other hexapods than they are to certain other crustaceans.
  The 67,000 described species range in size from Stygotantulus stocki at 0.1 mm (0.004 in), to the Japanese spider crab with a leg span of up to 3.8 m (12.5 ft) and a mass of 20 kg (44 lb). Like other arthropods, crustaceans have an exoskeleton, which they moult to grow. They are distinguished from other groups of arthropods, such as insects, myriapods and chelicerates, by the possession of biramous (two-parted) limbs, and by their larval forms, such as the nauplius stage of branchiopods and copepods.
  Most crustaceans are free-living aquatic animals, but some are terrestrial (e.g. woodlice), some are parasitic (e.g. Rhizocephala, fish lice, tongue worms) and some are sessile (e.g. barnacles). The group has an extensive fossil record, reaching back to the Cambrian, and includes living fossils such as Triops cancriformis, which has existed apparently unchanged since the Triassic period. More than 10 million tons of crustaceans are produced by fishery or farming for human consumption, the majority of it being shrimp and prawns. Krill and copepods are not as widely fished, but may be the animals with the greatest biomass on the planet, and form a vital part of the food chain. The scientific study of crustaceans is known as carcinology (alternatively, malacostracology, crustaceology or crustalogy), and a scientist who works in carcinology is a carcinologist."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/arrow_zpsovc4n8ic.png",
  name: "Arrow worms",
  phylum: "Chaetognatha",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: "Chaetognatha, meaning bristle-jaws, and commonly known as arrow worms, is a phylum of predatory marine worms which are a major component of plankton worldwide. About 20% of the known species are benthic, and can attach to algae and rocks. They are found in all marine waters, from surface tropical waters and shallow tide pools to the deep sea and polar regions. Most chaetognaths are transparent and are torpedo shaped, but some deep-sea species are orange. They range in size from 2 to 120 millimetres (0.1 to 4.7 in).
  There are more than 120 modern species assigned to over 20 genera. Despite the limited diversity of species, the number of individuals is large."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/oyster_zpsbbidqetm.png",
  name: "Clams",
  phylum: "Mollusca",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: "Clam is the general common name of any mollusks within the class Bivalvia. More specifically, true clams are bivalves having two shells of equal size connected by two adductor muscles and having a powerful burrowing foot. They are infaunal, spending most of their lives partially buried in the sand of the ocean floor. These characteristics distinguish the true clams from other bivalves, such as oysters, mussels, and scallops.
  Remains first appeared in Cambrian age rocks 510 million years ago. They presently live in both freshwater and marine habitats, and range in adult size from nearly microscopic to the giant clam, which can weigh 200 kg (440 lb). Some have life cycles of only one year, while at least one has been discovered that may be over 500 years old. They lack heads but most can react to changes in light and some, such as the scallops, have rudimentary eyes. Though a common food item, many are too small to be useful as food, and not all species are considered palatable. All clams have two calcareous shells or valves joined near a hinge structure with a flexible ligament, and all are filter feeders."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/seaSlug_zpsd5eqgh3x.png",
  name: "Sea Slugs",
  phylum: "Mollusca",
  order: "",
  family: "",
  genus: "",
  group_id: 3,
  body: "Nudibranchs /ˈnjuːdᵻbræŋk/ are a group of soft-bodied, marine gastropod molluscs which shed their shells after their larval stage. They are noted for their often extraordinary colours and striking forms. Currently, about 2,300 valid species of nudibranchs are known.
  The word 'nudibranch' comes from the Latin nudus, naked, and the Greek βραγχια, brankhia, gills.
  Nudibranchs are often casually called sea slugs, but many sea slugs belong to several taxonomic groups which are not closely related to nudibranchs. A number of these other sea slugs, such as the photosynthetic Sacoglossa and the colourful Aglajidae, are often confused with nudibranchs."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/octopus_zpspfwc0qe0.png",
  name: "Octopus",
  phylum: "Mollusca",
  order: "Octopoda",
  family: "",
  genus: "",
  group_id: 3,
  body: "The octopus (/ˈɒktəpʊs/ or /ˈɒktəpəs/; plural: octopuses, octopodes or octopi; see below) is a cephalopod mollusc of the order Octopoda. It has two eyes and four pairs of arms and, like other cephalopods, it is bilaterally symmetric. It has a beak, with its mouth at the center point of the arms. It has no internal or external skeleton (although some species have a vestigial remnant of a shell inside their mantles), allowing it to squeeze through tight places. Octopuses are among the most intelligent and behaviorally diverse of all invertebrates.
  Octopuses inhabit diverse regions of the ocean, including coral reefs, pelagic waters, and the ocean floor. They have numerous strategies for defending themselves against predators, including the expulsion of ink, the use of camouflage and deimatic displays, their ability to jet quickly through the water, and their ability to hide. They trail their eight arms behind them as they swim. All octopuses are venomous, but only one group, the blue-ringed octopus, is known to be deadly to humans.
  Around 300 species are recognized, which is over one-third of the total number of known cephalopod species. The term 'octopus' may also be used to refer specifically to the genus Octopus."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/vampire_zpsutryd3wk.png",
  name: "Vampire Squid",
  phylum: "Mollusca",
  order: "Vampyromorphida",
  family: "Vampyroteuthidae",
  genus: "Vampyroteuthis",
  group_id: 3,
  body: "Vampyroteuthis infernalis: The vampire squid (Vampyroteuthis infernalis, lit. 'vampire squid of Hell') is a small, deep-sea cephalopod found throughout the temperate and tropical oceans of the world. Unique retractile sensory filaments justify the vampire squid's placement in its own order: Vampyromorphida (formerly Vampyromorpha), which shares similarities with both squid and octopodes. As a phylogenetic relict it is the only known surviving member of its order, first described and originally classified as an octopus in 1903 by German teuthologist Carl Chun, but later assigned to a new order together with several extinct taxa."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/bobtail_zpsiavkxqvp.png",
  name: "Bobtail squid",
  phylum: "Mollusca",
  order: "Sepiolida",
  family: "",
  genus: "",
  group_id: 3,
  body: "Bobtail squid (order Sepiolida) are a group of cephalopods closely related to cuttlefish. Bobtail squid tend to have a rounder mantle than cuttlefish and have no cuttlebone. They have eight suckered arms and two tentacles and are generally quite small (typical male mantle length being between 1 and 8 cm). Sepiolids live in shallow coastal waters of the Pacific Ocean and some parts of the Indian Ocean as well as in shallow waters on the west coast of the Cape Peninsula off South Africa. Like cuttlefish, they can swim by either using the fins on their mantle or by jet propulsion. They are also known as dumpling squid (owing to their rounded mantle) or stubby squid."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/colossalSquid_zpsn7zefkt0.png",
  name: "Colossal Squid",
  phylum: "Mollusca",
  order: "Teuthida",
  family: "Cranchiidae",
  genus: "Mesonychoteuthis",
  group_id: 3,
  body: "The colossal squid (Mesonychoteuthis hamiltoni, from Greek mesos (middle), onycho (claw, nail), and teuthis (squid)), sometimes called the Antarctic or giant cranch squid, is believed to be the largest squid species in terms of mass. It is the only known member of the genus Mesonychoteuthis. It is known from only a few specimens, and current estimates put its maximum size at 12–14 m (39–46 ft) long and weighing possibly up to 750 kg (1,650 lb), based on analysis of smaller and immature specimens, making it the largest known invertebrate."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/xmasLightSquid_zpstudabmzw.png",
  name: "sparkling enope squid",
  phylum: "Mollusca",
  order: "Teuthida",
  family: "Enoploteuthidae",
  genus: "Watasenia",
  group_id: 3,
  body: "Watasenia scintillans, also known as the sparkling enope squid or firefly squid, is a species of squid in the family Enoploteuthidae. It is the sole species in the genus Watasenia."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/fungi_zpsffi5s0rr.png",
  name: "Fungi",
  phylum: "",
  order: "",
  family: "",
  genus: "",
  group_id: 4,
  body: "Found largely in temperate and tropical climates, currently there are known more than 75 species of bioluminescent fungi, all of which are members of the order Agaricales (Basidiomycota) with one exceptional ascomycete belonging to the order Xylariales. All known bioluminescent Agaricales are mushroom-forming, white-spored agarics that belong to four distinct evolutionary lineages. The Omphalotus lineage (comprising the genera Omphalotus and Neonothopanus) contains 12 species, the Armillaria lineage has 10 known species, while the Mycenoid lineage (Mycena, Panellus, Prunulus, Roridomyces) has more than 50 species. The recently discovered Lucentipes lineage contains two species, Mycena lucentipes and Gerronema viridilucens, which belong to a family that has not yet been formally named. Armillaria mellea is the most widely distributed of the luminescent fungi, found across Asia, Europe, North America, and South Africa.
  Bioluminescent fungi emit a greenish light at a wavelength of 520–530 nm. The light emission is continuous and occurs only in living cells. No correlation of fungal bioluminescence with cell structure has been found. Bioluminescence may occur in both mycelia and fruit bodies, as in Panellus stipticus and Omphalotus olearius, or only in mycelia and young rhizomorphs, as in Armillaria mellea. In Roridomyces roridus luminescence occurs only in the spores, while in Collybia tuberosa, it is only in the sclerotia.
  Although the biochemistry of fungal bioluminescence has not fully been characterized, the preparation of bioluminescent, cell-free extracts has allowed researchers to characterize the in vitro requirements of fungal bioluminescence. Experimental data suggest that a two-stage mechanism is required. In the first, a light-emitting substance (called 'luciferin') is reduced by a soluble reductase enzyme at the expense of NAD(P)H. In the second stage, reduced luciferin is oxidized by an insoluble luciferase that releases the energy in the form of bluish-green light. Conditions that affect the growth of fungi, such as pH, light and temperature, have been found to influence bioluminescence, suggesting a link between metabolic activity and fungal bioluminescence.
  All bioluminescent fungi share the same enzymatic mechanism, suggesting that there is a bioluminescent pathway that arose early in the evolution of the mushroom-forming Agaricales. All known luminescent species are white rot fungi capable of breaking down lignin, found in abundance in wood. Bioluminescence is an oxygen-dependent metabolic process because it provides antioxidant protection against the potentially damaging effects of reactive oxygen species produced during wood decay. The physiological and ecological function of fungal bioluminescence has not been established with certainty. It has been suggested that in the dark beneath closed tropical forest canopies, bioluminescent fruit bodies may be at an advantage by attracting grazing animals (including insects and other arthropods) that could help disperse their spores. Conversely, where mycelium (and vegetative structures like rhizomorphs and sclerotia) are the bioluminescent tissues, the argument has been made that light emission could deter grazing.
  The following list of bioluminescent mushrooms is based on a 2008 literature survey by Dennis Desjardin and colleagues, in addition to accounts of several new species published since then."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/BacteriaOne_zpsx2cw1nrk.png",
  name: "Vibrionaceae",
  phylum: "Proteobacteria",
  order: "Vibrionales",
  family: "Vibrionaceae",
  genus: "",
  group_id: 5,
  body: "The Vibrionaceae are a family of Proteobacteria given their own order. Inhabitants of fresh or salt water, several species are pathogenic, including the type species Vibrio cholerae, which is the agent responsible for cholera. Most bioluminescent bacteria belong to this family, and are typically found as symbionts of deep-sea animals.
  Vibrionaceae are Gram-negative organisms and facultative anaerobes, capable of fermentation. They contain oxidase and have one or more flagella, which are generally polar. Originally, these characteristics defined the family, which was divided into four genera. Two of these, Vibrio and Photobacterium, correspond to the modern group, although several new genera have been defined. Genetic studies have shown the other two original members—Aeromonas and Plesiomonas—belong to separate families. The family Vibrionaceae currently comprises eight validly published genera: Aliivibrio, Catenococcus, Enterovibrio, Grimontia, Listonella, Photobacterium, Salinivibrio, and Vibrio; although the status of Listonella has been questioned.
  Members of this family also synthesize tetrodotoxin (TTX), an ancient marine alkaloid and powerful neurotoxin (Na+ pump inhibitor, 1 mg can kill an adult) that serves to protect members of an order of fishes, the Tetraodontiformes (tetras-four and odontos-tooth), which include the puffer fish (see fugu, raw puffer fish served in Japan). As mentioned above, Vibrionaceae bacteria are in symbiosis with many marine organisms. In the case of the puffer fish, and other marine organisms harboring TTX-producing Vibrionaceae, the symbiosis is an ancient and powerful one, providing protection against predation for the marine organisms that harbor these bacteria, while providing the bacteria a protected environment with plenty of nutrients for growth. TTX and saxitoxin provide good examples of convergent biochemical evolution: both toxins are extremely toxic at low levels, both are Na+ pump inhibitors and both have nearly identical binding constants on the Na+ pump in neurons."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/bacteriaTwo_zpswywzyidz.png",
  name: "Shewanella",
  phylum: "Proteobacteria",
  order: "Alteromonadales",
  family: "Shewanellaceae",
  genus: "Shewanella",
  group_id: 5,
  body: "Shewanella is the sole genus included in the Shewanellaceae family of marine bacteria, some species within it were formerly classed as Alteromonas. Shewanella bacteria are a normal component of the surface flora of fish and are implicated in fish spoilage.
  Shewanella oneidensis MR-1 is a widely used laboratory model to study anaerobic respiration of metals and other anaerobic extracellular electron acceptors, and for teaching about microbial electrogenesis and microbial fuel cells."
  },{
  image: "http://i1159.photobucket.com/albums/p624/sarahpenneyuk/microorganisms_zpsxqwc6wpd.png",
  name: "Protist",
  phylum: "",
  order: "",
  family: "",
  genus: "",
  group_id: 6,
  body: "Protist (/ˈproʊtᵻst/) is an informal term for any eukaryotic organism that is not an animal, plant or fungus. The protists do not form a natural group, or clade, but are often grouped together for convenience, like algae or invertebrates. In some systems of biological classification, such as the popular 5-kingdom scheme proposed by Robert Whittaker in 1969, the protists make up a kingdom called Protista, composed of 'organisms which are unicellular or unicellular-colonial and which form no tissues.
  Besides their relatively simple levels of organization, protists do not necessarily have much in common. When used, the term “protists” is now considered to mean similar-appearing but diverse taxa that are not related through an exclusive common ancestor, and have different life cycles, trophic levels, modes of locomotion, and cellular structures. In the classification system of Lynn Margulis, the term protist is reserved for microscopic organisms, while the more inclusive term Protoctista is applied to a biological kingdom which includes certain large multicellular eukaryotes, such as kelp, red algae and slime molds. Other workers use the term protist more broadly, to encompass both microbial eukaryotes and macroscopic organisms that do not fit into the other traditional kingdoms.
  In cladistic systems, there are no equivalents to the taxa Protista or Protoctista, both terms referring to a paraphyletic group which spans the entire eukaryotic tree of life. In cladistic classification, the contents of Protista are distributed among various supergroups (SAR, Archaeplastida, Excavata, Opisthokonta, etc.) and 'Protista', ''Protoctista'' and 'Protozoa' are considered obsolete. However, the term 'protist' continues to be used informally as a catch-all term for eukaryotic microorganisms. For example, the phrase 'protist pathogen' may be used to denote any disease-causing microbe which is not bacteria, virus, viroid or metazoa."
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
