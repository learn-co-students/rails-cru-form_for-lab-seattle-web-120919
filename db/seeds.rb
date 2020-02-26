# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a1 = Artist.create(name: "Jazz", bio: "Hello there")
g1 = Genre.create(name: "Rock")
Song.create(name: "Jazzman", artist_id: a1, genre_id: g1)
