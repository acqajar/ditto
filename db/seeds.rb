# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
<<<<<<< HEAD
<<<<<<< HEAD
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: "Bradford Nemmers", email: "bnems@test.com", gender: "male", rel_type: "dating", orientation: "female", 
						location: "90025", radius: 25);
# User.create(name: "Biff Nacks", email: "biff@test.com", age: 30, gender: "male",
#                         rel_type: "dating", orientation: "male", location: "90025", radius: 11);
# User.create(name: "Zooks Was", email: "zooks@test.com", age: 20, gender: "male",
#                         rel_type: "freindship", orientation: "female", location: "90401", radius: 25);
# User.create(name: "Nerds Hungry", email: "nerd@test.com", age: 22, gender: "male",
#                         rel_type: "dating", orientation: "female", location: "90025", radius: 30);                     
# User.create(name: "Sleepy Guy", email: "sleepy@test.com", age: 37, gender: "male",
#                         rel_type: "dating", orientation: "female", location: "90025", radius: 40);
# User.create(name: "Hot Girl", email: "hot@test.com", age: 18, gender: "female",
#                         rel_type: "dating", orientation: "female", location: "90025", radius: 10);
# User.create(name: "Arsi Likes", email: "arsi@test.com", age: 20, gender: "male",
#                         rel_type: "dating", orientation: "male", location: "90026", radius: 11);
# User.create(name: "Seed Stuff", email: "seed@test.com", age: 26, gender: "male",
#                         rel_type: "dating", orientation: "female", location: "90401", radius: 25);
# User.create(name: "Virgin Girl", email: "virgin@test.com", age: 16, gender: "female",
#                         rel_type: "dating", orientation: "male", location: "90025", radius: 30);                     
# User.create(name: "Drunk Guy", email: "drunk@test.com", age: 36, gender: "male",
#                         rel_type: "dating", orientation: "female", location: "90401", radius: 40);
# User.create(name: "Bum Bum", email: "bum@test.com", age: 36, gender: "male",
#                         rel_type: "dating", orientation: "female", location: "90401", radius: 10);    
# Match
User.create(name: "Jenni MacArthur", email: "jenni@test.com", gender: "female", rel_type: "dating", orientation: "male",
						location: "90404", radius: 10);
# Not a match (Distance);
User.create(name: "Samantha Cole", email: "sam@test.com", gender: "female", rel_type: "dating", orientation: "male",
						location: "92037", radius: 15);
# Not a match (Rel Type)
User.create(name: "Susan B. Anthony", email: "susan@test.com", gender: "female", rel_type: "friendship", orientation: "both",
						location: "90034", radius: 25);
# Not a match (Orientation -> Gender)
User.create(name: "Steve Jones", email: "steve@test.com", gender: "male", rel_type: "dating", orientation: "female",
						location: "90046", radius: 10);
# Not a match
User.create(name: "Susan B. Anthony", email: "susan@test.com", gender: "female", rel_type: "friendship", orientation: "both",
						location: "90035", radius: 25);                                                                          
=======
User.create(name: "Bradford Nemmers", gender: "male", rel_type: "dating", orientation: "female", 
                        location: "90025", radius: 25);
# Match
User.create(name: "Jenni MacArthur", gender: "female", rel_type: "dating", orientation: "male",
                        location: "90404", radius: 10);
# Not a match (Distance);
User.create(name: "Samantha Cole", gender: "female", rel_type: "dating", orientation: "male",
                        location: "90620", radius: 15);
# Not a match (Rel Type)
User.create(name: "Susan B. Anthony", gender: "female", rel_type: "friendship", orientation: "both",
                        location: "90025", radius: 25);
# Not a match (Orientation -> Gender)
User.create(name: "Steve Jones", gender: "male", rel_type: "dating", orientation: "female",
                        location: "90046", radius: 10);
# Not a match
User.create(name: "Susan B. Anthony", gender: "female", rel_type: "friendship", orientation: "both",
                        location: "90025", radius: 25);
>>>>>>> ba49b5bf9b30f6afc5645c2495b8b74b9bab52aa
=======
# User.create!(name: "Bradford Nemmers", email: "test@email.com", gender: "male", rel_type: "dating", orientation: "female", location: "90025", radius: 25);
# # Match
# User.create!(name: "Jenni MacArthur", email: "test1@email.com", gender: "female", rel_type: "dating", orientation: "male", location: "90404", radius: 10);
# # Not a match (Distance);
# User.create!(name: "Samantha Cole", email: "test2@email.com", gender: "female", rel_type: "dating", orientation: "male", location: "90620", radius: 15);
# # Not a match (Rel Type)
# User.create!(name: "Susan B. Anthony", email: "test3@email.com", gender: "female", rel_type: "friendship", orientation: "both", location: "90025", radius: 25);
# # Not a match (Orientation -> Gender)
# User.create!(name: "Steve Jones", email: "test4@email.com", gender: "male", rel_type: "dating", orientation: "female", location: "90046", radius: 10);
# # Not a match
# User.create!(name: "Susan B. Anthony", email: "test5@email.com", gender: "female", rel_type: "friendship", orientation: "both", location: "90025", radius: 25);
# lat: p.location.coordinate["latitude"], lng: p.location.coordinate["longitude"]

PlaceCategory.destroy_all
Place.destroy_all
Category.destroy_all
places = Yelp.client.search("90404", { term: "Pizza" }).businesses
places.each do |p|
	place = Place.find_or_create_by(:name => p.name, yelpid: p.id)
	p.categories.each do |c|
		cat = Category.find_or_create_by(:name => c[1], friendly_name: c[0])
		place.place_categories.create(category: cat)
	end
end


>>>>>>> 25d10278b8286e2981efc3ed806f5832efd411d8
