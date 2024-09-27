# Seed File
User.create(first_name: 'Rahul', email: 'rahul@yabx.co', password: 'password')
5.times do
  User.create(first_name: Faker::Name.name, email: Faker::Internet.email, password: 'password')
end

10.times do
  Article.create(title: Faker::Lorem.sentence(word_count: 3),
                 description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
                 status: true,
                 user_id: User.ids.sample)
end