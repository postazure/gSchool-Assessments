require_relative 'people'

# What are the last names of all of the people?
PEOPLE.each_value {|value| puts value[:last_name]}
