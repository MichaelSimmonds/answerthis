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

profile_1 = Profile.create!(first_name: "Ben", last_name: "Peterson", dob: Date.new(1999, 2, 21), gender: "Male", is_client: 1, company_name: "BMW", company_address: "Jekerstraat 55, Amsterdam", user_id: user_1.id)

profile_2 = Profile.create!(first_name: "Luca", last_name: "Roma", dob: Date.new(1959, 11, 21), gender: "Male", is_client: 0, company_name: "", company_address: "", user_id: user_2.id)

questionnaire_1 = Questionnaire.create!(title: "market research BMW", description: "This questionnaire is about your preference as a potential car owner.", profile_id: profile_1.id)

question_1 = Question.create!(title: "Color", body: "What color would you like your first car to have?", questionnaire_id: questionnaire_1.id)
question_2 = Question.create!(title: "Size", body: "What size do you think is ideal for your first car?", questionnaire_id: questionnaire_1.id)
question_3 = Question.create!(title: "Prize", body: "What prize-range would you focus on when looking for your first car?", questionnaire_id: questionnaire_1.id)
question_4 = Question.create!(title: "BMW?", body: "Would you buy a BMW as your first car? If yes, why? If no, why?", questionnaire_id: questionnaire_1.id)

answer_1 = Answer.create!(body: "answer A", question_id: question_1.id)
answer_2 = Answer.create!(body: "answer C", question_id: question_2.id)
answer_3 = Answer.create!(body: "answer A", question_id: question_3.id)
answer_4 = Answer.create!(body: "Yes i would like a BMW as a first car, they are cool!", question_id: question_4.id)

Prize.create!(title: "Smart watch", description: "Really nice gadget, something you probably won't buy yourselfe but is really cool to have!", image_url: "http://cdn.macworld.co.uk/cmsdata/slideshow/3512394/apple_watch_thumb800.jpg", value: 100, quantity_remaining: 20, win_probability: 0.3, voucher_code: "HD2383GSO1", questionnaire_id: questionnaire_1.id)
Prize.create!(title: "iphone", description: "Who doesn't want to own one of these baby's!", image_url: "https://www.technobuffalo.com/wp-content/uploads/2015/06/original-iphone-2g-2007-1280x895.jpg", value: 30, quantity_remaining: 30, win_probability: 0.4, voucher_code: "HD2733LKD2", questionnaire_id: questionnaire_1.id)

Response.create!(content: "A", answer_id: answer_1.id, profile_id: profile_2.id)
Response.create!(content: "C", answer_id: answer_2.id, profile_id: profile_2.id)
Response.create!(content: "A", answer_id: answer_3.id, profile_id: profile_2.id)
Response.create!(content: "This is a terrible question, of course i want to own a BMW but i can't afford it!", answer_id: 4, profile_id: profile_2.id)
