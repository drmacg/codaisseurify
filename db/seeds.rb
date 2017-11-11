# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.destroy_all
Artist.destroy_all

indexi = Artist.create!(
  name: 'Indexi',
  biography: 'Indexi was a Bosnian and former Yugoslav rock band popular in Yugoslavia. It formed in 1962 in Sarajevo, Bosnia and Herzegovina, and disbanded in 2001 when singer Davorin Popović died.'
)

song_1 = Song.create!(
  name: "Da Sam Ja Netko",
  track_number: 1,
  duration: "3:57",
  artist: indexi
)

song_2 = Song.create!(
  name: "	Sanjam",
  track_number: 2,
  duration: "3:48",
  artist: indexi
)

song_3 = Song.create!(
  name: "Balada",
  track_number: 3,
  duration: "4:20",
  artist: indexi
)
