# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 

# m1 = Movie.create(name: "The Lion King", release_date: 1994, image: "https://upload.wikimedia.org/wikipedia/en/3/3d/The_Lion_King_poster.jpg", likes: 0)

# c1 = Comment.create(comments: "The Lion King is the G.O.A.T!!!", movie: m1, user: u2)

Comment.destroy_all
Adventure.destroy_all
User.destroy_all 

u1 = User.create(name: 'Rachel', hometown: 'NYC, New York', bio: "I'm a high-powered attorney with a flair for adrenaline pumping adventures.", age: 35)
u2 = User.create(name: 'Tom', hometown: 'Columbus, Ohio', bio: "Half accountant, half thrill seeker.", age: 40)
u3 = User.create(name: 'Alicia', hometown: 'Nashville, Tennessee', bio: "Recent college grad, looking to leave behind my small town living and explore new opportunities.", age: 22)
u4 = User.create(name: 'William', hometown: 'Denver, Colorado', bio: "Retired school teacher of 40 years. Ready to start this new chapter. It's never too late to go for your dreams!", age: 63)
u5 = User.create(name: 'Liam', hometown: 'Seattle, Washington', bio: "Software Engineer lucky enough to live a nomadic, daring life", age: 29)

# a1 user is Alicia
a1 = Adventure.create(title: 'Hiking', photo: 'https://xdaysiny.com/wp-content/uploads/2017/07/Hiking-Diamond-Head-Honolulu-Oahu-Hawaii.jpg', location: 'Hawaii', hashtags: '#hiking, #hawaii', description: "The scenery is so beautiful, I'm deathly afraid of heights though. Yikes.", likes: 0) 

#a2 user is Liam
a2 = Adventure.create(title: 'Skydiving', photo: 'https://www.skydive.com.mx/images/gallery/4.jpg', location: 'Mexico', hashtags: '#skydiving, #mexico', description: "Skydiving in Playa Del Carmen was crazy. I even tried a little stunt.", likes: 0) 

# a3 user is Rachel
a3 = Adventure.create(title: 'Whitewater Rafting', photo: 'https://i.pinimg.com/originals/c7/34/b1/c734b166cd924a8122915ae5599b7af4.jpg', location: 'Australia', hashtags: '#rafting, #australia', description: "What a rush!", likes: 0) 

c1 = Comment.create(comments: 'So cool! Rafting is definitely in my top 5!', adventure: a3, user: u4)
c2 = Comment.create(comments: 'The water is so blue. I love it! Skydiving is a hard pass though, I would pass out.', adventure: a2, user: u3)
c3 = Comment.create(comments: 'Looking good Liam! Neat trick!', adventure: a2, user: u2)

puts 'great job Ange!'