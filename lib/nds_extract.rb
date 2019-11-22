require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  hash = {}
 pp nds
  nds.each { |director, value| 
  total = 0
    director[:movies].each { |movie_info|
      total += movie_info[:worldwide_gross]
    }
    
    hash[director[:name]]= total
  }
  result = {}
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
end
