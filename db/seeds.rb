# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Era.destroy_all
Artist.destroy_all

early = Era.create(name: "Early Jazz/New Orleans and Chicago Dixieland")
swing = Era.create(name: "Swing/Big Band")
bebop = Era.create(name: "Bebop")
cool = Era.create(name: "Cool")
hard_bop = Era.create(name: "Hard Bop")
free_jazz = Era.create(name: "Free Jazz/Avant Garde")
fusion = Era.create(name: "Fusion/Jazz-Rock")
eclectic = Era.create(name: "Eclecticisim")

Artist.create(name: "Miles Davis", album: "Kind of Blue", bio: "something", url: "placeholder", era: cool)
Artist.create(name: "Louis Armstrong", album: "something", bio: "something", url: "placeholder",era: early)
Artist.create(name: "Dizzy Gilespie", album: "Something else", bio: "something", url: "placeholder",era: bebop)
Artist.create(name: "Max Roach", album: "test", bio: "something",era: bebop)
Artist.create(name: "Pat Methany", album: "Need to research", bio: "something", url: "placeholder", era: fusion)
Artist.create(name: "Albert Ayler", album: "Getting there", bio: "something", url: "placeholder", era: free_jazz)