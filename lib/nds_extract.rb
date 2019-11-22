require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  result = {}
  
  nds.each { |director, value| 
    total = gross_for_director(director)
    result = {director[:name] => total}
  }
   pp result
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  
  director_data[:movies].each { |movie_info|
    total += movie_info[:worldwide_gross]
  }
  puts director_data[:name]
  puts total
  puts
  total
end
