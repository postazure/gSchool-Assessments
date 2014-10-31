require_relative 'people'

# What is the first genre that each person listed?

PEOPLE.each_key do |key|
  
  puts PEOPLE[key][:preferences][:favorite_genres][0]

end
