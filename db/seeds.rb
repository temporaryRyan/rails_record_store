# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all

5.times do |index|
  Artist.create!(name: (Faker::Verb.past_participle + " " + Faker::TvShows::Seinfeld.character))
end

p "created #{Artist.count} artists"
  