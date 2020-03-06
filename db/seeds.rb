require 'uri'

def random_weekdays
  size = rand(1..Location::WEEKDAYS.size)
  Location::WEEKDAYS.sample(size)
end

Chat.destroy_all
Review.destroy_all
Booking.destroy_all
Location.destroy_all
Category.destroy_all
User.destroy_all
Booking.destroy_all

# categories
kitchen = Category.create!(name: "kitchen")
pub = Category.create!(name: "pub")
apartment = Category.create!(name: "apartment")
garden = Category.create!(name: "garden")
living_room = Category.create!(name: "living_room")
basement = Category.create!(name: "basement")
toilet = Category.create!(name: "toilet")
restaurant = Category.create!(name: "restaurant")

david = User.create!(username: "Master Chief", email: 'david@gmail.com', password: '123456')
bea = User.create!(username: "Liutenant Commander", email: 'bea@gmail.com', password: '123456')
rado = User.create!(username: "Capitan General", email: 'rado@gmail.com', password: '123456')
alán = User.create!(username: "The Boss", email: 'alan@gmail.com', password: '123456')


pepe = User.create!(username: "Pepe", email: "pepe@gmail.com", password: "123456")


file_1 = URI.open('https://i.pinimg.com/originals/83/f4/a1/83f4a12fe2dbad875bef2b4fa5453868.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "Small kitchen", price: 55, description: "Brand new, haven't used it yet.", category: Category.find_by_name("kitchen"), user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: file_1, filename: 'nes.jpg', content_type: 'image/jpg')


file_3 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/10/6a/cd/f3/murphys-irish-pub-checkpoint.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "Irish pub", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: file_3, filename: 'nes.jpg', content_type: 'image/jpg')

file_4 = URI.open("https://live.staticflickr.com/4059/4670451769_8b29a31a9a_b.jpg")
location_4 = Location.create!(available_weekdays: random_weekdays,name: "Dark basement", price: 25, description: "Dark and moist, great to spy on the neighbours.", category: basement, user: pepe, address: "Plaza palmeras 6")
location_4.photos.attach(io: file_4, filename: 'nes.jpeg', content_type: 'image/jpeg')



jason = User.create!(username: "Jason", email: "jason@gmail.com", password: "123456")

file_5 = URI.open("https://www.mydomaine.com/thmb/mjdI0zvOEKI5qHcKeEEizGtLFjY=/700x467/filters:no_upscale():max_bytes(150000):strip_icc()/cdn.cliqueinc.com__cache__posts__221714__small-kitchen-design-ideas-221714-1492471224025-image.700x0c-a8344d6cc05346559b7bbb63d36b9918.jpg")
location_5 = Location.create!(available_weekdays: random_weekdays,name: "Big kitchen", price: 23, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
location_5.photos.attach(io: file_5, filename: 'nes.jpg', content_type: 'image/jpg')

file_6 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/05/a3/15/8f/la-esquina-bar-de-gamonal.jpg")
location_6 = Location.create!(available_weekdays: random_weekdays,name: "Spanish tapas bar", price: 5, description: "It's broken, but it's cheap.", category: pub, user: jason, address: "Calle Embajadores 100")
location_6.photos.attach(io: file_6, filename: 'nes.jpg', content_type: 'image/jpg')



terminator = User.create!(username: "Terminator", email: "terminator@gmail.com", password: "123456")

file_7 = URI.open("https://saltandblues.com/wp-content/uploads/2019/07/living-room-warm-interior-paint-colors-for-2015-warm-paint-colors-for-living-room-rooms-family-net.jpg")
location_7 = Location.create!(available_weekdays: random_weekdays,name: "Warm living room", price: 5, description: "Went to the past and stole this from a hipster, it kinda sucks.", category: living_room, user: terminator, address: "Calle Embajadores 110")
location_7.photos.attach(io: file_7, filename: 'nes.jpg', content_type: 'image/jpg')

file_8 = URI.open("https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/chair-in-creepy-abandoned-basement-dylan-murphy.jpg")
location_8 = Location.create!(available_weekdays: random_weekdays,name: "Creepy basement", price: 5, description: "I'll be back... with more of this ones because they are a-ma-zing!", category: basement, user: terminator, address: "Calle Embajadores 120")
location_8.photos.attach(io: file_8, filename: 'nes.jpg', content_type: 'image/jpg')



fernando = User.create!(username: "Fernando", email: "fernando@gmail.com", password: "123456")

file_9 = URI.open("https://www.loscabosguide.com/wp-content/uploads/2018/09/BarEsquina-BahiahotelLOSCABOS11.jpg")
location_9 = Location.create!(available_weekdays: random_weekdays,name: "Family restaurant", price: 19, description: "It's new, my granma gave me this for christmas but I don't like photography.", category: restaurant, user: fernando, address: "Calle Embajadores")
location_9.photos.attach(io: file_9, filename: 'nes.jpg', content_type: 'image/jpg')



charlotte = User.create!(username: "Charlotte", email: "charlotte@gmail.com", password: "123456")

file_10 = URI.open("https://q-cf.bstatic.com/images/hotel/max1024x768/184/184927791.jpg")
location_10 = Location.create!(available_weekdays: random_weekdays,name: "Green garden", price: 30, description: "I use it all the time! great image and everything works!.", category: garden, user: charlotte, address: "Calle Juan de Mariana")
location_10.photos.attach(io: file_10, filename: 'nes.jpg', content_type: 'image/jpg')

file_11 = URI.open("https://freshome.com/wp-content/uploads/2015/07/4-bar-main.jpg")
location_11 = Location.create!(available_weekdays: random_weekdays,name: "Wooden kitchen", price: 17, description: "It doesn't fly, but you can hold it as a camera, the stabilizer is superb.", category: kitchen, user: charlotte, address: "Calle Embajadores")
location_11.photos.attach(io: file_11, filename: 'nes.jpg', content_type: 'image/jpg')


natalie = User.create!(username: "Natalie", email: "natalie@gmail.com", password: "123456")

file_12 = URI.open("https://d1bvpoagx8hqbg.cloudfront.net/originals/huge-room-big-bathroom-separated-wardrobe-d6512776dde7da2a630ba5cf05e7d08a.jpg")
file_121 = URI.open("https://iruntheinternet.com/lulzdump/images/giant-toilet-slide-kids-massive-toilet-14047686390.jpg")
location_12 = Location.create!(available_weekdays: random_weekdays,name: "Massive toilet", price: 45, description: "This thing can hold an elephant!", category: toilet, user: natalie, address: "Calle Embajadores")
location_12.photos.attach(io: file_12, filename: 'nes.jpg', content_type: 'image/jpg')
location_12.photos.attach(io: file_121, filename: 'nes.jpg', content_type: 'image/jpg')

file_13 = URI.open("https://s.hdnux.com/photos/01/10/01/13/18879198/3/gallery_medium.jpg")
location_13 = Location.create!(available_weekdays: random_weekdays,name: "Mansion", price: 700, description: "This mansion is perfect for your film, you can use all the rooms you need, it has 3 living rooms, 2 kitchens, 5 toilets and 10 rooms. Is available all days and we don't live there, so make sure you book in advance to save your space! ", category: apartment, user: natalie, address: "Calle Embajadores")
location_13.photos.attach(io: file_13, filename: 'nes.jpg', content_type: 'image/jpg')

file_14 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_141 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_142 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_14 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: apartment, user: natalie, address: "Calle Embajadores")
location_14.photos.attach(io: file_14, filename: 'nes.jpg', content_type: 'image/jpg')
location_14.photos.attach(io: file_141, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_14.photos.attach(io: file_142, filename: 'nes.jpg', content_type: 'image/jpg')


booking1 = Booking.create!(user: natalie, location: location_10, dates: ["2020-03-20"])
booking2 = Booking.create!(user: charlotte, location: location_13, dates: ["2020-03-20", "2020-04-15"])



review1 = Review.create(rating: 5, content:"Great place, just like the pictures", user: charlotte, booking: booking1)
review2 = Review.create(rating: 3, content:"Love using this toilet", user: charlotte, booking: booking1)
review3 = Review.create(rating: 1, content:"A-ma-zing", user: charlotte, booking: booking2)
