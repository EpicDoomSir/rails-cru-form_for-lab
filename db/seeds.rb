# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all

artist1 = Artist.create(name: Faker::Artist.name, bio: Faker::Lorem.paragraph)
artist2 = Artist.create(name: Faker::Artist.name, bio: Faker::Lorem.paragraph)
artist3 = Artist.create(name: Faker::Artist.name, bio: Faker::Lorem.paragraph)

genre1 = Genre.create(name: Faker::Cosmere.metal)
genre2 = Genre.create(name: Faker::Cosmere.metal)
genre3 = Genre.create(name: Faker::Cosmere.metal)



song1 = Song.create(name: Faker::Cosmere.surge, artist_id: artist1.id, genre_id: genre1.id)
song1 = Song.create(name: Faker::Cosmere.surge, artist_id: artist2.id, genre_id: genre2.id)
song1 = Song.create(name: Faker::Cosmere.surge, artist_id: artist3.id, genre_id: genre3.id)
