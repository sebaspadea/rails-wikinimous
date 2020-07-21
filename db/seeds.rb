require "faker"
# TODO: Write a seed to insert 100 posts in the database
# db/seeds.rb
puts 'Creating 10 fake articles...'
10.times do
  article = Article.new(
    title: Faker::Lorem.sentences(number: 1, supplemental: true),
    content: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
  )
  article.save!
end
puts 'Finished!'
