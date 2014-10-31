require_relative 'people'

# What is the last name of the person sitting next to joe?
#
# HINT: Start by finding who joe is sitting next to, then find that person in the hash.
#
# PEOPLE.each_key do |key|
#   seat_mate = PEOPLE[key][:sitting_next_to]
#   puts PEOPLE[seat_mate.to_s][:last_name]
# end

seat_mate = PEOPLE["joe"][:sitting_next_to]
puts PEOPLE[seat_mate.to_s][:last_name]
