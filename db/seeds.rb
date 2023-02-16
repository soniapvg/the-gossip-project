5.times do
  City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

15.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email(name: first_name + last_name)
  User.create(
    first_name: first_name,
    last_name: last_name,
    age: rand(18..88),
    email: email,
    description: Faker::Lorem.paragraph,
    city: City.all.sample
  )
end

30.times do
  Gossip.create(
    title: Faker::Lorem.sentence(word_count: 1, random_words_to_add: 2),
    content: Faker::Lorem.paragraph(sentence_count: 2, random_sentences_to_add: 2),
    user: User.all.sample
  )
end
