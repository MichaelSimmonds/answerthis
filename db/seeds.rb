# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# colors = ["blue", "red", "green", "yellow"]

# colors.each do |color|
#   Question.create(color: color)
# end

# 10.times do
# Answer.create!(question_id: Question.all.pluck(:id).sample)
Answer.delete_all
Question.delete_all
Prize.delete_all
Questionnaire.delete_all
Profile.delete_all
User.delete_all


# end

# User.all.pluck(:id).sample


user_1 = User.create!(email: "ben@gmail.com", password: "ben@gmail.com", password_confirmation: "ben@gmail.com", admin:true)
user_2 = User.create!(email: "lucas@gmail.com", password: "lucas@gmail.com", password_confirmation: "lucas@gmail.com")

profile_1 = Profile.create!(first_name: "Ben", last_name: "Peterson", dob: Date.new(1989, 2, 21), gender: "Male", is_client: 1, company_name: "BMW", company_address: "Jekerstraat 55, Amsterdam", user_id: user_1.id)
profile_2 = Profile.create!(first_name: "Luca", last_name: "Roma", dob: Date.new(1959, 11, 21), gender: "Male", is_client: 0, company_name: "", company_address: "", user_id: user_2.id)

questionnaire_1 = Questionnaire.create!(title: "Market research BMW", description: "This questionnaire is about your preference as a potential car owner.", profile_id: profile_1.id)

question_1 = Question.create!(title: "Car owner?", body: "Do you currently own a car?", questionnaire_id: questionnaire_1.id)
answer_1 = Answer.create!(body: "Yes", question_id: question_1.id)
answer_2 = Answer.create!(body: "No", question_id: question_1.id)
answer_3 = Answer.create!(body: "I share (partly own) a car ", question_id: question_1.id)

question_2 = Question.create!(title: "Color", body: "If you had to choose one of the following colors, what color would you like your first car to be?", questionnaire_id: questionnaire_1.id)
answer_1 = Answer.create!(body: "Black", question_id: question_2.id)
answer_2 = Answer.create!(body: "Red", question_id: question_2.id)
answer_3 = Answer.create!(body: "White", question_id: question_2.id)
answer_4 = Answer.create!(body: "Grey", question_id: question_2.id)

question_3 = Question.create!(title: "Type", body: "What type op car would be ideal for your first car?", questionnaire_id: questionnaire_1.id)
answer_1 = Answer.create!(body: "3 doors", question_id: question_3.id)
answer_2 = Answer.create!(body: "5 doors", question_id: question_3.id)
answer_3 = Answer.create!(body: "4x4", question_id: question_3.id)
answer_4 = Answer.create!(body: "cabrio", question_id: question_3.id)

question_4 = Question.create!(title: "Price", body: "What price-range would you focus on when looking for your first car?", questionnaire_id: questionnaire_1.id)
answer_1 = Answer.create!(body: "< €10,000", question_id: question_4.id)
answer_2 = Answer.create!(body: "€10,000 - €29,999", question_id: question_4.id)
answer_3 = Answer.create!(body: "€30,000 - €49,999", question_id: question_4.id)
answer_4 = Answer.create!(body: "> €50,000", question_id: question_4.id)

question_5 = Question.create!(title: "Future", body: "Do you think that you will own a car in the next three (3) years?", questionnaire_id: questionnaire_1.id)
answer_1 = Answer.create!(body: "No", question_id: question_5.id)
answer_2 = Answer.create!(body: "yes, probably in 2017", question_id: question_5.id)
answer_3 = Answer.create!(body: "yes, probably in 2018", question_id: question_5.id)
answer_4 = Answer.create!(body: "yes, probably in 2019", question_id: question_5.id)

Prize.create!(title: "E-reader - Kobo Aura Edition 2 ", description: "The Kobo Aura gives the most natural reading experience. This handy and light e-reader with backlight allows you to read anytime and anywhere.", image_url: "https://image.coolblue.io/products/561268?width=422&height=390", value: 119, quantity_remaining: 20, win_probability: 0.02, voucher_code: "HD2383GSO1", questionnaire_id: questionnaire_1.id)
Prize.create!(title: "Sunglasses -  Havana/Brown - 54 mm", description: "The Erika model sunglasses from Ray-Ban is a perfect accessory to complete your look. The color lenses combine excellent with the frame and are made to 100\% protect your eyes from the Sun. This graceful sunglasses with oversized round lenses is made of plastic and has a lens width of 54 mm.", image_url: "https://images-na.ssl-images-amazon.com/images/I/71xtBkix49L._UL1500_.jpg", value: 86, quantity_remaining: 27, win_probability: 0.027, voucher_code: "HD2733LKD2", questionnaire_id: questionnaire_1.id)
Prize.create!(title: "Parfume - for him or her", description: "A parfume voucher worth of €65,00 that can be used at your local parfume store or online on your favorite online store!", image_url: "http://www.nstperfume.com/wordpress/wp-content/uploads/2012/08/avon-city-rush-duo.jpg", value: 65, quantity_remaining: 36, win_probability: 0.036, voucher_code: "HD2223BPA12", questionnaire_id: questionnaire_1.id)
Prize.create!(title: "Backpack - Highlander Discovery 85", description: "This is the Highlander Discovery Backpack with a capacity of 85 litres. The backpack has a ABS adjustable back and is made from 240 Hex Ripstop polyester with PU coating. The belt is extra and the strap can be adjusted like the shoulder straps. On the right hip band is still a box with a zipper for various stuff. The back panel is made of Mesh and has thereby a lot better and prevents a clammy back. The Backpack also has a hydration opening and room for your camel back so you just can continue to drink while walking. ", image_url: "https://s.s-bol.com/imgbase0/imagebase3/large/FC/2/1/6/7/9200000040057612.jpg", value: 94, quantity_remaining: 25, win_probability: 0.025, voucher_code: "HD992873QSI11", questionnaire_id: questionnaire_1.id)

# Response.create!(content: "A", answer_id: answer_1.id, profile_id: profile_2.id)
# Response.create!(content: "C", answer_id: answer_2.id, profile_id: profile_2.id)
# Response.create!(content: "A", answer_id: answer_3.id, profile_id: profile_2.id)
# Response.create!(content: "This is a terrible question, of course i want to own a BMW but i can't afford it!", answer_id: 4, profile_id: profile_2.id)
