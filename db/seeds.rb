User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)
             
35.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end

50.times do
  title = Faker::Book.title
  description = Faker::Lorem.paragraph
  author = Faker::App.author
  Book.create!(title: title,
               description: description,
               author: author)
end

100.times do
  title = Faker::Book.title
  description = Faker::Lorem.paragraph
  author =  Faker::App.author
  Novel.create!(title: title,
               description: description,
               author: author)
end
