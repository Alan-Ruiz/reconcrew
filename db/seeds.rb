require 'uri'

def random_weekdays
  size = rand(1..Location::WEEKDAYS.size)
  Location::WEEKDAYS.sample(size)
end

Locationextra.destroy_all
Extra.destroy_all
Chat.destroy_all
Review.destroy_all
Booking.destroy_all
Location.destroy_all
Category.destroy_all
User.destroy_all
Booking.destroy_all

# Extras
Extra.create(name: 'Natural Light', icon: '<i class="fas fa-sun"></i>')
Extra.create(name: 'Sound Proof', icon: '<i class="fas fa-microphone-alt-slash"></i>')
Extra.create(name: 'Toilet', icon: '<i class="fas fa-restroom"></i>')
Extra.create(name: 'WiFi', icon: '<i class="fas fa-wifi"></i>')
Extra.create(name: 'Drinking Water', icon: '<i class="fas fa-tint"></i>')
Extra.create(name: 'Apt For Rails', icon: '<i class="fas fa-grip-lines-vertical"></i>')
Extra.create(name: 'Apt For Action Scenes', icon: '<i class="fas fa-exclamation-triangle"></i>')
Extra.create(name: 'Loud Filming Noise Allowed', icon: '<i class="fas fa-volume-up"></i>')
Extra.create(name: 'Location Remodel Alowed', icon: '<i class="fas fa-chair"></i>')

# categories
kitchen = Category.create!(name: "kitchen")
house = Category.create!(name: "house")
pub = Category.create!(name: "pub")
apartment = Category.create!(name: "Apartment")
garden = Category.create!(name: "garden")
living_room = Category.create!(name: "living Room")
basement = Category.create!(name: "basement")
restaurant = Category.create!(name: "restaurant")

# users

foto_6 = URI.open("https://es.web.img2.acsta.net/c_215_290/medias/nmedia/18/35/38/61/19636935.jpg")
natalie = User.create!(username: "Natalie", email: "natalie@gmail.com", password: "123456")
natalie.photo.attach(io: foto_6, filename: 'nes.jpg', content_type: 'image/jpg')

foto_10 = URI.open("https://static.techspot.com/images2/news/bigimage/2019/03/2019-03-09-image-6.jpg")
david = User.create!(username: "Master Chief", email: 'david@gmail.com', password: '123456')
david.photo.attach(io: foto_10, filename: 'nes.jpg', content_type: 'image/jpg')

foto_11 = URI.open("https://caloosabelle.com/wp-content/uploads/2019/11/cb-11-28-vet.jpg")
bea = User.create!(username: "Liutenant Commander", email: 'bea@gmail.com', password: '123456')
bea.photo.attach(io: foto_11, filename: 'nes.jpg', content_type: 'image/jpg')

foto_12 = URI.open("https://newsimg.bbc.co.uk/media/images/40770000/jpg/_40770007_newlazap203copy.jpg")
rado = User.create!(username: "Capitan General", email: 'rado@gmail.com', password: '123456')
rado.photo.attach(io: foto_12, filename: 'nes.jpg', content_type: 'image/jpg')

foto_13 = URI.open("https://www.pandasecurity.com/mediacenter/src/uploads/2016/02/boss.jpg")
alán = User.create!(username: "The Boss", email: 'alan@gmail.com', password: '123456')
alán.photo.attach(io: foto_13, filename: 'nes.jpg', content_type: 'image/jpg')

foto_5 = URI.open("https://image.freepik.com/free-photo/french-woman-with-baguettes-street-beret_1321-310.jpg")
charlotte = User.create!(username: "Charlotte", email: "charlotte@gmail.com", password: "123456")
charlotte.photo.attach(io: foto_5, filename: 'nes.jpg', content_type: 'image/jpg')

foto_1 = URI.open("https://90l.tribuna.com/images/d0/cf/c9/d0cfc9d62a33492086eb7811757577d0500x500@2x.jpg")
pepe = User.create!(username: "Pepe", email: "pepe@gmail.com", password: "123456")
pepe.photo.attach(io: foto_1, filename: 'nes.jpg', content_type: 'image/jpg')

foto_3 = URI.open("https://www.theolivepress.es/wp-content/uploads/2018/06/terminator.jpg")
terminator = User.create!(username: "Terminator", email: "terminator@gmail.com", password: "123456")
terminator.photo.attach(io: foto_3, filename: 'nes.jpg', content_type: 'image/jpg')

foto_2 = URI.open("https://img.etimg.com/thumb/width-640,height-480,imgsize-574454,resizemode-1,msid-69702930/government-notifies-extension-of-pm-kisan-scheme-to-all-farmers.jpg")
jason = User.create!(username: "Jason", email: "jason@gmail.com", password: "123456")
jason.photo.attach(io: foto_2, filename: 'nes.jpg', content_type: 'image/jpg')

foto_4 = URI.open("https://i.pinimg.com/originals/b5/87/3e/b5873e4acafc5ebc7d5043c355dd85bf.jpg")
fernando = User.create!(username: "Fernando", email: "fernando@gmail.com", password: "123456")
fernando.photo.attach(io: foto_4, filename: 'nes.jpg', content_type: 'image/jpg')






#  KITCHEN

kitchen1 = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/small-kitchen-ideas-1568926700.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "Small kitchen", price: 55, description: "Brand new, haven't used it yet.", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen1, filename: 'nes.jpg', content_type: 'image/jpg')

kitchen2 = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/small-kitchen-1572367025.png')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "Medium kitchen", price: 65, description: "Brand new, haven't used it yet.", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen2, filename: 'nes.png', content_type: 'image/png')

kitchen3 = URI.open('https://static.domain.com.au/domainblog/uploads/2018/09/17120223/2_h15dh2.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "Big kitchen", price: 75, description: "Brand new, haven't used it yet.", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen3, filename: 'nes.jpg', content_type: 'image/jpg')

kitchen4 = URI.open('https://s3.amazonaws.com/homestratosphere/wp-content/uploads/2014/08/12Z-luxurykitchen119400.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "Minion kitchen", price: 35, description: "Brand new, haven't used it yet.", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen4, filename: 'nes.jpg', content_type: 'image/jpg')

kitchen5 = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/blue-kitchen-1508346767.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "Pitufos' kitchen", price: 95, description: "Brand new, haven't used it yet.", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen5, filename: 'nes.jpg', content_type: 'image/jpg')

kitchen6 = URI.open('https://ae01.alicdn.com/kf/Hb9707a3d1b674f52bd9766e75e1374f5P/Zombie-Door-Sticker-Living-Room-Kitchen-PVC-Self-Adhesive-Waterproof-Sticker-On-The-Doors-Wallpaper.jpg_220x220xz.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "Zombie kitchen", price: 5, description: "Brand new, haven't used it yet.", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen6, filename: 'nes.jpg', content_type: 'image/jpg')

kitchen7 = URI.open('https://i.pinimg.com/originals/09/0b/c9/090bc927dd48c16fece5f868f67fc469.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "RecOn24 kitchen", price: 105, description: "Brand new, haven't used it yet.", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen7, filename: 'nes.jpg', content_type: 'image/jpg')

kitchen8 = URI.open('https://homebnc.com/homeimg/2017/03/22-outdoor-kitchen-ideas-homebnc.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "XL kitchen", price: 550, description: "Brand new, haven't used it yet.", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen8, filename: 'nes.jpg', content_type: 'image/jpg')

kitchen9 = URI.open('https://i.pinimg.com/originals/91/77/14/9177140c67698f35c124dfabc138e041.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "Five kitchen", price: 555, description: "Brand new, haven't used it yet.", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen9, filename: 'nes.jpg', content_type: 'image/jpg')

kitchen10 = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/14/1f/99/15/private-empty-kitchen.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "New kitchen", price: 505, description: "Brand new, haven't used it yet.", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen10, filename: 'nes.jpg', content_type: 'image/jpg')

kitchen11 = URI.open('https://ue4arch.com/wp-content/uploads/2015/08/old_kitchen_02.jpg')
location_1 = Location.create!(available_weekdays: random_weekdays, name: "Old kitchen", price: 0, description: "I only want to met new people hehehehehehe...", category: kitchen, user: User.last, address: "Plaza palmeras 6")
location_1.photos.attach(io: kitchen11, filename: 'nes.jpg', content_type: 'image/jpg')

file_34 = URI.open("https://www.ikea.com/images/c3/90/c3901feba0b6de2494001ee424d2ac4d.jpg")
file_341 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_342 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_34 = Location.create!(available_weekdays: random_weekdays,name: "Green Kitchen", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: kitchen, user: natalie, address: "Calle Embajadores")
location_34.photos.attach(io: file_34, filename: 'nes.jpg', content_type: 'image/jpg')
location_34.photos.attach(io: file_341, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_34.photos.attach(io: file_342, filename: 'nes.jpg', content_type: 'image/jpg')

file_11 = URI.open("https://freshome.com/wp-content/uploads/2015/07/4-bar-main.jpg")
location_11 = Location.create!(available_weekdays: random_weekdays,name: "Wooden kitchen", price: 17, description: "It doesn't fly, but you can hold it as a camera, the stabilizer is superb.", category: kitchen, user: charlotte, address: "Calle Embajadores")
location_11.photos.attach(io: file_11, filename: 'nes.jpg', content_type: 'image/jpg')

file_17 = URI.open("https://cdn.onebauer.media/one/media/5d6e/859e/16ef/e650/2932/4b38/RAcC2dkGxtkWr-JKNlc4grHhDsdvvwcsJegaU9bOW9Q.jpg")
file_171 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_172 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_17 = Location.create!(available_weekdays: random_weekdays,name: "Star Wars Kitchen", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: kitchen, user: natalie, address: "Calle Embajadores")
location_17.photos.attach(io: file_17, filename: 'nes.jpg', content_type: 'image/jpg')
location_17.photos.attach(io: file_171, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_17.photos.attach(io: file_172, filename: 'nes.jpg', content_type: 'image/jpg')

file_26 = URI.open("https://img.edilportale.com/product-thumbs/b_gran-duca-zelda-prestige-340966-relc50327a4.jpg")
file_261 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_262 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_26 = Location.create!(available_weekdays: random_weekdays,name: "Zelda Kitchen", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: kitchen, user: natalie, address: "Calle Embajadores")
location_26.photos.attach(io: file_26, filename: 'nes.jpg', content_type: 'image/jpg')
location_26.photos.attach(io: file_261, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_26.photos.attach(io: file_262, filename: 'nes.jpg', content_type: 'image/jpg')





# BASEMENT

basement1 = URI.open("https://live.staticflickr.com/4059/4670451769_8b29a31a9a_b.jpg")
location_4 = Location.create!(available_weekdays: random_weekdays,name: "Dark basement", price: 10, description: "Dark and moist, great to spy on the neighbours.", category: basement, user: pepe, address: "Plaza palmeras 6")
location_4.photos.attach(io: basement1, filename: 'nes.jpeg', content_type: 'image/jpeg')

basement2 = URI.open("https://makingitlovely.com/wp-content/uploads/2010/11/IMG_3048a500.jpg")
location_4 = Location.create!(available_weekdays: random_weekdays,name: "Empty basement", price: 2, description: "Dark and moist, great to spy on the neighbours.", category: basement, user: pepe, address: "Plaza palmeras 6")
location_4.photos.attach(io: basement2, filename: 'nes.jpg', content_type: 'image/jpg')

basement3 = URI.open("https://mk0aeont9p0lw6yryd.kinstacdn.com/wp-content/uploads/2016/05/16/1907-2.jpg")
location_4 = Location.create!(available_weekdays: random_weekdays,name: "Cthulhu basement", price: 250, description: "Dark and moist, great to spy on the neighbours.", category: basement, user: pepe, address: "Plaza palmeras 6")
location_4.photos.attach(io: basement3, filename: 'nes.jpg', content_type: 'image/jpg')

basement4 = URI.open("https://thenypost.files.wordpress.com/2020/01/star-wars-basement-06.jpg")
location_4 = Location.create!(available_weekdays: random_weekdays,name: "Star Wars basement", price: 205, description: "Dark and moist, great to spy on the neighbours.", category: basement, user: pepe, address: "Plaza palmeras 6")
location_4.photos.attach(io: basement4, filename: 'nes.jpg', content_type: 'image/jpg')

basement5 = URI.open("https://pbs.twimg.com/media/C4ZP8lMWAAEtpP3.jpg")
location_4 = Location.create!(available_weekdays: random_weekdays,name: "Trump's basement", price: 5, description: "Dark and moist, great to spy on the neighbours.", category: basement, user: pepe, address: "Plaza palmeras 6")
location_4.photos.attach(io: basement5, filename: 'nes.jpg', content_type: 'image/jpg')

basement6 = URI.open("https://a.wattpad.com/cover/54190329-288-k328691.jpg")
location_4 = Location.create!(available_weekdays: random_weekdays,name: "Monster's basement", price: 21, description: "Dark and moist, great to spy on the neighbours.", category: basement, user: pepe, address: "Plaza palmeras 6")
location_4.photos.attach(io: basement6, filename: 'nes.jpg', content_type: 'image/jpg')

basement7 = URI.open("https://i.pinimg.com/originals/50/7a/20/507a201133eac4ebf5bec7872b9289d0.jpg")
location_4 = Location.create!(available_weekdays: random_weekdays,name: "Nani basement", price: 232, description: "Dark and moist, great to spy on the neighbours.", category: basement, user: pepe, address: "Plaza palmeras 6")
location_4.photos.attach(io: basement7, filename: 'nes.jpg', content_type: 'image/jpg')

basement8 = URI.open("https://i.redd.it/81elhv19b7p11.jpg")
location_4 = Location.create!(available_weekdays: random_weekdays,name: "Gamer basement", price: 245, description: "Dark and moist, great to spy on the neighbours.", category: basement, user: pepe, address: "Plaza palmeras 6")
location_4.photos.attach(io: basement8, filename: 'nes.jpg', content_type: 'image/jpg')

basement9 = URI.open("https://i.pinimg.com/originals/46/3a/33/463a336a74ca6d56ca4f4666923cf814.jpg")
location_4 = Location.create!(available_weekdays: random_weekdays,name: "Dark Souls basement", price: 15, description: "Dark and moist, great to spy on the neighbours.", category: basement, user: pepe, address: "Plaza palmeras 6")
location_4.photos.attach(io: basement9, filename: 'nes.jpg', content_type: 'image/jpg')

basement10 = URI.open("https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/chair-in-creepy-abandoned-basement-dylan-murphy.jpg")
location_8 = Location.create!(available_weekdays: random_weekdays,name: "Creepy basement", price: 95, description: "I'll be back... with more of this ones because they are a-ma-zing!", category: basement, user: terminator, address: "Calle Embajadores 120")
location_8.photos.attach(io: basement10, filename: 'nes.jpg', content_type: 'image/jpg')

file_20 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_201 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_202 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_20 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: basement, user: natalie, address: "Calle Embajadores")
location_20.photos.attach(io: file_20, filename: 'nes.jpg', content_type: 'image/jpg')
location_20.photos.attach(io: file_201, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_20.photos.attach(io: file_202, filename: 'nes.jpg', content_type: 'image/jpg')

file_29 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_291 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_292 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_29 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: basement, user: natalie, address: "Calle Embajadores")
location_29.photos.attach(io: file_29, filename: 'nes.jpg', content_type: 'image/jpg')
location_29.photos.attach(io: file_291, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_29.photos.attach(io: file_292, filename: 'nes.jpg', content_type: 'image/jpg')



# APARTMENT

apartment1 = URI.open("https://cdn.vox-cdn.com/thumbor/LJme-9qPPeF3SOqHh8z97mPoRbs=/0x0:1200x800/1200x800/filters:focal(504x304:696x496)/cdn.vox-cdn.com/uploads/chorus_image/image/58373545/286129160.0.jpg")
location_5 = Location.create!(available_weekdays: random_weekdays,name: "Big Apartment", price: 23, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
location_5.photos.attach(io: apartment1, filename: 'nes.jpg', content_type: 'image/jpg')

apartment2 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/0e/4d/08/05/apartamenty-sky-tower.jpg")
location_5 = Location.create!(available_weekdays: random_weekdays,name: "Sky Apartment", price: 230, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
location_5.photos.attach(io: apartment2, filename: 'nes.jpg', content_type: 'image/jpg')

apartment3 = URI.open("https://images.trvl-media.com/hotels/35000000/34650000/34648200/34648134/b2654a33_z.jpg")
location_5 = Location.create!(available_weekdays: random_weekdays,name: "Dalmata Apartment", price: 101, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
location_5.photos.attach(io: apartment3, filename: 'nes.jpg', content_type: 'image/jpg')

apartment4 = URI.open("https://i.pinimg.com/originals/43/12/d7/4312d77a5ecea6af41898baae6df9011.jpg")
location_5 = Location.create!(available_weekdays: random_weekdays,name: "Hunted Apartment", price: 29, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
location_5.photos.attach(io: apartment4, filename: 'nes.jpg', content_type: 'image/jpg')

apartment5 = URI.open("https://q-cf.bstatic.com/images/hotel/max1024x768/221/221381808.jpg")
location_5 = Location.create!(available_weekdays: random_weekdays,name: "Great Apartment", price: 93, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
location_5.photos.attach(io: apartment5, filename: 'nes.jpg', content_type: 'image/jpg')

apartment6 = URI.open("https://i.ytimg.com/vi/AFOGRYhgKi4/maxresdefault.jpg")
location_5 = Location.create!(available_weekdays: random_weekdays,name: "Pumkin Apartment", price: 90, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
location_5.photos.attach(io: apartment6, filename: 'nes.jpg', content_type: 'image/jpg')

apartment7 = URI.open("https://i.pinimg.com/originals/db/91/27/db91277c174e08ada198a24185a6c062.jpg")
location_5 = Location.create!(available_weekdays: random_weekdays,name: "Luxury Apartment", price: 2300, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
location_5.photos.attach(io: apartment7, filename: 'nes.jpg', content_type: 'image/jpg')

apartment8 = URI.open("https://i.ytimg.com/vi/GoH4-Q39rxs/maxresdefault.jpg")
location_5 = Location.create!(available_weekdays: random_weekdays,name: "Real Apartment", price: 33, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
location_5.photos.attach(io: apartment8, filename: 'nes.jpg', content_type: 'image/jpg')

# apartment9 = URI.open("https://images1.apartments.com/i2/fmiQBCX7JbxRIsRaUi8N6aVtwA515WxEyBQlDfQ1apc/117/place-one-apartment-homes-plymouth-meeting-pa-1hab-15ba---990-ft.jpg")
# location_5 = Location.create!(available_weekdays: random_weekdays,name: "One Aparment", price: 1, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
# location_5.photos.attach(io: apartment9, filename: 'nes.jpg', content_type: 'image/jpg')

# apartment10 = URI.open("https://q-xx.bstatic.com/xdata/images/hotel/840x460/112738970.jpg")
# location_5 = Location.create!(available_weekdays: random_weekdays,name: "Two Aparment", price: 2, description: "Works great, only a few scratches from regular use.", category: apartment, user: jason, address: "Calle Embajadores 130")
# location_5.photos.attach(io: apartment10, filename: 'nes.jpg', content_type: 'image/jpg')

file_15 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_151 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_152 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_15 = Location.create!(available_weekdays: random_weekdays,name: "Lollipop Flats", price: 95, description: "Belle Époque never died in MADRID CITY CENTRE, full of majestic cultural life. That flat where you can dream as if you were in a movie, but rather your real holidays.", category: apartment, user: natalie, address: "Calle Embajadores")
location_15.photos.attach(io: file_15, filename: 'nes.jpg', content_type: 'image/jpg')
location_15.photos.attach(io: file_151, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_15.photos.attach(io: file_152, filename: 'nes.jpg', content_type: 'image/jpg')

file_16 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_161 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_162 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_16 = Location.create!(available_weekdays: random_weekdays,name: "Apartment in ", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: apartment, user: natalie, address: "Calle Embajadores")
location_16.photos.attach(io: file_16, filename: 'nes.jpg', content_type: 'image/jpg')
location_16.photos.attach(io: file_161, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_16.photos.attach(io: file_162, filename: 'nes.jpg', content_type: 'image/jpg')

file_13 = URI.open("https://s.hdnux.com/photos/01/10/01/13/18879198/3/gallery_medium.jpg")
location_13 = Location.create!(available_weekdays: random_weekdays,name: "Mansion", price: 700, description: "This mansion is perfect for your film, you can use all the rooms you need, it has 3 living rooms, 2 kitchens, 5 toilets and 10 rooms. Is available all days and we don't live there, so make sure you book in advance to save your space! ", category: apartment, user: natalie, address: "Calle Embajadores")
location_13.photos.attach(io: file_13, filename: 'nes.jpg', content_type: 'image/jpg')







#  PUB

pub1 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/10/6a/cd/f3/murphys-irish-pub-checkpoint.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "Irish pub", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: pub1, filename: 'nes.jpg', content_type: 'image/jpg')

pub2 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/07/bc/df/be/restaurante-bar-andaluz.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "Bar Andaluz", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: pub2, filename: 'nes.jpg', content_type: 'image/jpg')

pub3 = URI.open("https://i2.wp.com/canariasvipcard.com/es/wp-content/uploads/sites/2/2018/12/Wartseiner-Eck-3.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "WARSTEINER ECK", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: pub3, filename: 'nes.jpg', content_type: 'image/jpg')

pub4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/12/aa/ec/d7/oishii-ramen-street.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "Oshii Ramen", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: pub4, filename: 'nes.jpg', content_type: 'image/jpg')

pub5 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/12/aa/ec/d7/oishii-ramen-street.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "Hotel Royal London Pub", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: pub5, filename: 'nes.jpg', content_type: 'image/jpg')

pub6 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/03/c2/18/d0/the-new-york-beer-company.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "NY Pub", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: pub6, filename: 'nes.jpg', content_type: 'image/jpg')

pub7 = URI.open("https://i.pinimg.com/originals/1a/28/75/1a2875daa1a6799953687b5dff3e3185.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "Ramses I Pub", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: pub7, filename: 'nes.jpg', content_type: 'image/jpg')

pub8 = URI.open("https://i0.wp.com/farm6.staticflickr.com/5573/15036437759_b7d7d415d9_c.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "Pingu Bar", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: pub8, filename: 'nes.jpg', content_type: 'image/jpg')

pub9 = URI.open("https://i.pinimg.com/originals/96/8a/30/968a3058c302c777018116a2ef1e41a2.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "Nigth Club", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: pub9, filename: 'nes.jpg', content_type: 'image/jpg')

pub10 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/14/69/26/2d/looking-for-something.jpg")
location_3 = Location.create!(available_weekdays: random_weekdays,name: "Day Club", price: 25, description: "Great stuff, trust me.", category: pub, user: pepe, address: "Plaza palmeras 6")
location_3.photos.attach(io: pub10, filename: 'nes.jpg', content_type: 'image/jpg')

file_6 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/05/a3/15/8f/la-esquina-bar-de-gamonal.jpg")
location_6 = Location.create!(available_weekdays: random_weekdays,name: "Spanish tapas bar", price: 5, description: "It's broken, but it's cheap.", category: pub, user: jason, address: "Calle Embajadores 100")
location_6.photos.attach(io: file_6, filename: 'nes.jpg', content_type: 'image/jpg')

file_23 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_231 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_232 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_23 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: pub, user: natalie, address: "Calle Embajadores")
location_23.photos.attach(io: file_23, filename: 'nes.jpg', content_type: 'image/jpg')
location_23.photos.attach(io: file_231, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_23.photos.attach(io: file_232, filename: 'nes.jpg', content_type: 'image/jpg')

file_31 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_311 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_312 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_31 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: pub, user: natalie, address: "Calle Embajadores")
location_31.photos.attach(io: file_31, filename: 'nes.jpg', content_type: 'image/jpg')
location_31.photos.attach(io: file_311, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_31.photos.attach(io: file_312, filename: 'nes.jpg', content_type: 'image/jpg')




# LIVINGROOM

file_7 = URI.open("https://saltandblues.com/wp-content/uploads/2019/07/living-room-warm-interior-paint-colors-for-2015-warm-paint-colors-for-living-room-rooms-family-net.jpg")
location_7 = Location.create!(available_weekdays: random_weekdays,name: "Warm living room", price: 5, description: "Went to the past and stole this from a hipster, it kinda sucks.", category: living_room, user: terminator, address: "Calle Embajadores 110")
location_7.photos.attach(io: file_7, filename: 'nes.jpg', content_type: 'image/jpg')

file_21 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_211 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_212 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_21 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: living_room, user: natalie, address: "Calle Embajadores")
location_21.photos.attach(io: file_21, filename: 'nes.jpg', content_type: 'image/jpg')
location_21.photos.attach(io: file_211, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_21.photos.attach(io: file_212, filename: 'nes.jpg', content_type: 'image/jpg')

file_30 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_301 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_302 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_30 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: living_room, user: natalie, address: "Calle Embajadores")
location_30.photos.attach(io: file_30, filename: 'nes.jpg', content_type: 'image/jpg')
location_30.photos.attach(io: file_301, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_30.photos.attach(io: file_302, filename: 'nes.jpg', content_type: 'image/jpg')



# RESTAURANT

file_9 = URI.open("https://www.loscabosguide.com/wp-content/uploads/2018/09/BarEsquina-BahiahotelLOSCABOS11.jpg")
location_9 = Location.create!(available_weekdays: random_weekdays,name: "Family restaurant", price: 19, description: "It's new, my granma gave me this for christmas but I don't like photography.", category: restaurant, user: fernando, address: "Calle Embajadores")
location_9.photos.attach(io: file_9, filename: 'nes.jpg', content_type: 'image/jpg')

file_18 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_181 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_182 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_18 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: restaurant, user: natalie, address: "Calle Embajadores")
location_18.photos.attach(io: file_18, filename: 'nes.jpg', content_type: 'image/jpg')
location_18.photos.attach(io: file_181, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_18.photos.attach(io: file_182, filename: 'nes.jpg', content_type: 'image/jpg')

file_27 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_271 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_272 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_27 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: restaurant, user: natalie, address: "Calle Embajadores")
location_27.photos.attach(io: file_27, filename: 'nes.jpg', content_type: 'image/jpg')
location_27.photos.attach(io: file_271, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_27.photos.attach(io: file_272, filename: 'nes.jpg', content_type: 'image/jpg')



# Garden

file_10 = URI.open("https://q-cf.bstatic.com/images/hotel/max1024x768/184/184927791.jpg")
location_10 = Location.create!(available_weekdays: random_weekdays,name: "Green garden", price: 30, description: "I use it all the time! great image and everything works!.", category: garden, user: charlotte, address: "Calle Juan de Mariana")
location_10.photos.attach(io: file_10, filename: 'nes.jpg', content_type: 'image/jpg')

file_22 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_221 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_222 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_22 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: garden, user: natalie, address: "Calle Embajadores")
location_22.photos.attach(io: file_22, filename: 'nes.jpg', content_type: 'image/jpg')
location_22.photos.attach(io: file_221, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_22.photos.attach(io: file_222, filename: 'nes.jpg', content_type: 'image/jpg')

file_31 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_311 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_312 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_31 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: garden, user: natalie, address: "Calle Embajadores")
location_31.photos.attach(io: file_31, filename: 'nes.jpg', content_type: 'image/jpg')
location_31.photos.attach(io: file_311, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_31.photos.attach(io: file_312, filename: 'nes.jpg', content_type: 'image/jpg')




# HOUSE

file_25 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_251 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_252 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_25 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: house, user: natalie, address: "Calle Embajadores")
location_25.photos.attach(io: file_25, filename: 'nes.jpg', content_type: 'image/jpg')
location_25.photos.attach(io: file_251, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_25.photos.attach(io: file_252, filename: 'nes.jpg', content_type: 'image/jpg')

file_33 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_331 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_332 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_33 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: house, user: natalie, address: "Calle Embajadores")
location_33.photos.attach(io: file_33, filename: 'nes.jpg', content_type: 'image/jpg')
location_33.photos.attach(io: file_331, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_33.photos.attach(io: file_332, filename: 'nes.jpg', content_type: 'image/jpg')

file_24 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_241 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_242 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_24 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: house, user: natalie, address: "Calle Embajadores")
location_24.photos.attach(io: file_24, filename: 'nes.jpg', content_type: 'image/jpg')
location_24.photos.attach(io: file_241, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_24.photos.attach(io: file_242, filename: 'nes.jpg', content_type: 'image/jpg')

file_32 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_321 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_322 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_32 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: house, user: natalie, address: "Calle Embajadores")
location_32.photos.attach(io: file_32, filename: 'nes.jpg', content_type: 'image/jpg')
location_32.photos.attach(io: file_321, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_32.photos.attach(io: file_322, filename: 'nes.jpg', content_type: 'image/jpg')

file_12 = URI.open("https://d1bvpoagx8hqbg.cloudfront.net/originals/huge-room-big-bathroom-separated-wardrobe-d6512776dde7da2a630ba5cf05e7d08a.jpg")
file_121 = URI.open("https://iruntheinternet.com/lulzdump/images/giant-toilet-slide-kids-massive-toilet-14047686390.jpg")
location_12 = Location.create!(available_weekdays: random_weekdays,name: "Massive toilet", price: 45, description: "This thing can hold an elephant!", category: house, user: natalie, address: "Calle Embajadores")
location_12.photos.attach(io: file_12, filename: 'nes.jpg', content_type: 'image/jpg')
location_12.photos.attach(io: file_121, filename: 'nes.jpg', content_type: 'image/jpg')

file_19 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_191 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_192 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_19 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: house, user: natalie, address: "Calle Embajadores")
location_19.photos.attach(io: file_19, filename: 'nes.jpg', content_type: 'image/jpg')
location_19.photos.attach(io: file_191, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_19.photos.attach(io: file_192, filename: 'nes.jpg', content_type: 'image/jpg')

file_28 = URI.open("https://ws.icnea.net/img2/E1568/imgs/E1045F0x350.jpg")
file_281 = URI.open("https://d3v91i3f0p5scr.cloudfront.net/properties/room_search_result/6bc8cb9c-9f1c-49b5-bc54-e7ac19411b0c/b4b8d17f25865e4e4f481db4ddc171f150571144.jpeg")
file_282 = URI.open("https://www.aparteasy.com/long-term-rental/fotos/2/1506071694e29eb1f0aa6fa2430fa6a5ef93099cfb/150607170818d562871905c0acb4add90965332619.jpg")
location_28 = Location.create!(available_weekdays: random_weekdays,name: "Nice apartment", price: 95, description: "Aparment in the center of madrid. Great location for small productions, we can't hold more than 12 people and you need to tell us what type of equipment you will be using, the flat is as it is, you can change the place of small things but not the big ones.", category: house, user: natalie, address: "Calle Embajadores")
location_28.photos.attach(io: file_28, filename: 'nes.jpg', content_type: 'image/jpg')
location_28.photos.attach(io: file_281, filename: 'nes.jpeg', content_type: 'image/jpeg')
location_28.photos.attach(io: file_282, filename: 'nes.jpg', content_type: 'image/jpg')










booking1 = Booking.create!(user: natalie, location: location_10, dates: ["2020-03-20"])
booking2 = Booking.create!(user: charlotte, location: location_13, dates: ["2020-03-20", "2020-04-15"])



review1 = Review.create(rating: 5, content:"Great place, just like the pictures", user: charlotte, booking: booking1)
review2 = Review.create(rating: 3, content:"Love using this toilet", user: charlotte, booking: booking1)
review3 = Review.create(rating: 1, content:"A-ma-zing", user: charlotte, booking: booking2)
