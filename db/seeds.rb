Location.destroy_all
Review.destroy_all
User.destroy_all


david = User.create!(username: "Master Chief", email: 'david@gmail.com', password: '123456')
bea = User.create!(username: "Liutenant Commander", email: 'bea@gmail.com', password: '123456')
rado = User.create!(username: "Capitan General", email: 'rado@gmail.com', password: '123456')
alán = User.create!(username: "The Boss", email: 'alan@gmail.com', password: '123456')


pepe = User.create(username: "Pepe", email: "pepe@gmail.com", password: "123456")

file_1 = URI.open('')
location_1 = Location.create!(name: "Small kitchen", price: 25, description: "Brand new, haven't used it yet.", category: "kitchen", user: pepe, address: "Plaza palmeras 6")
location_1.photo.attach(io: file_1, filename: 'nes.jpg', content_type: 'image/jpg')

file_2 = URI.open("")
location_2 = Location.create!(name: "Living room", price: 25, description: "Incredible, get it with my camera, they mix like peanut butter and jelly.", category: "living room", user: pepe, address: "Plaza palmeras 6")
location_2.photo.attach(io: file_2, filename: 'nes.jpg', content_type: 'image/jpg')

file_3 = URI.open("")
location_3 = Location.create!(name: "Irish pub", price: 25, description: "Great stuff, trust me.", category: "pub", user: pepe, address: "Plaza palmeras 6")
location_3.photo.attach(io: file_3, filename: 'nes.jpg', content_type: 'image/jpg')

file_4 = URI.open("")
location_4 = Location.create!(name: "Dark basement", price: 25, description: "Flies like a bird, great to spy on the neighbours.", category: "basement", user: pepe, address: "Plaza palmeras 6")
location_4.photo.attach(io: file_4, filename: 'nes.jpeg', content_type: 'image/jpeg')



jason = User.create(username: "Jason", email: "jason@gmail.com", password: "123456")

file_5 = URI.open("")
location_5 = Location.create!(name: "Big kitchen", price: 23, description: "Works great, only a few scratches from regular use.", category: "kitchen", user: jason, address: "Calle Embajadores 130")
location_5.photo.attach(io: file_5, filename: 'nes.jpg', content_type: 'image/jpg')

file_6 = URI.open("")
location_6 = Location.create!(name: "Spanish tapas bar", price: 5, description: "It's broken, but it's cheap.", category: "pub", user: jason, address: "Calle Embajadores 100")
location_6.photo.attach(io: file_6, filename: 'nes.jpg', content_type: 'image/jpg')



terminator = User.create(username: "Terminator", email: "terminator@gmail.com", password: "123456")

file_7 = URI.open("")
location_7 = Location.create!(name: "Warm living room", price: 5, description: "Went to the past and stole this from a hipster, it kinda sucks.", category: "living room", user: terminator, address: "Calle Embajadores 110")
location_7.photo.attach(io: file_7, filename: 'nes.jpg', content_type: 'image/jpg')

file_8 = URI.open("")
location_8 = Location.create!(name: "Creepy basement", price: 5, description: "I'll be back... with more of this ones because they are a-ma-zing!", category: "basement", user: terminator, address: "Calle Embajadores 120")
location_8.photo.attach(io: file_8, filename: 'nes.jpg', content_type: 'image/jpg')



fernando = User.create(username: "Fernando", email: "fernando@gmail.com", password: "123456")

file_9 = URI.open("")
location_9 = Location.create!(name: "Family restaurant", price: 19, description: "It's new, my granma gave me this for christmas but I don't like photography.", category: "restaurant", user: fernando, address: "Calle Embajadores")
location_9.photo.attach(io: file_9, filename: 'nes.jpg', content_type: 'image/jpg')



charlotte = User.create(username: "Charlotte", email: "charlotte@gmail.com", password: "123456")

file_10 = URI.open("")
location_10 = Location.create!(name: "Green garden", price: 30, description: "I use it all the time! great image and everything works!.", category: "garden", user: charlotte, address: "Calle Juan de Mariana")
location_10.photo.attach(io: file_10, filename: 'nes.jpg', content_type: 'image/jpg')

file_11 = URI.open("")
location_11 = Location.create!(name: "Dirty kitchen", price: 17, description: "It doesn't fly, but you can hold it as a camera, the stabilizer is superb.", category: "kitchen", user: charlotte, address: "Calle Embajadores")
location_11.photo.attach(io: file_11, filename: 'nes.jpg', content_type: 'image/jpg')


natalie = User.create(username: "Natalie", email: "natalie@gmail.com", password: "123456")

file_12 = URI.open("")
location_12 = Location.create!(name: "Massive toilet", price: 15, description: "This thing can hold an elephant!", category: "toilet", user: natalie, address: "Calle Embajadores")
location_12.photo.attach(io: file_12, filename: 'nes.jpg', content_type: 'image/jpg')

file_13 = URI.open("")
location_13 = Location.create!(name: "Mansion", price: 45, description: "Best drone in the market, battery don't hold as much but image is great!.", category: "mansion", user: natalie, address: "Calle Embajadores")
location_13.photo.attach(io: file_13, filename: 'nes.jpg', content_type: 'image/jpg')
