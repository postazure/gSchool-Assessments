require_relative 'people'

# What was the date of the first correspondence with joe?

puts PEOPLE['joe'][:correspondence].first[:date]
