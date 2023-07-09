puts "Seeding started"

song = Song.new({ title: "Wish You Were Here", artist: "Pink Floyd", album: "Wish You Were Here", year: 1975 })
song.save

song = Song.new({ title: "No Quarter", artist: "Led Zeppelin", album: "Houses of the Holy", year: 1973 })
song.save

song = Song.new({ title: "What I Got", artist: "Sublime", album: "40oz to Freedom", year: 1996 })
song.save

song = Song.new({ title: "Love I'm Given", artist: "Ellie Goulding", album: "Brightest Blue", year: 2020 })
song.save

puts "Seeding complete"
