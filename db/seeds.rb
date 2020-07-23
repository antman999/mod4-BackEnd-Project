# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Pet.destroy_all

User.create!(first_name:'Bob',last_name:'skywalker',bio:'love animals',email:'theForceIstrong@ST.com',pet_preference:'Dog',foster?:false,adopt?:true,age:23,country:'united states',city:'new york', zip:11334,password:'123')

Pet.create!(pet_type:'Dog', breed:'Pitbull',age:2,sex:'Male',country:'United States', img_url:'https://getyourpet.com/wp-content/uploads/2018/12/pitbull-in-houston-yard.jpg', adopted:false, can_adopt?:true, can_foster?:true)
