require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  pp nds[0]
  
  grand_total = 0
  row_index = 0
  while row_index < nds.length do
    column_index = 0
    #pp nds[row_index][0]
    while column_index < nds[row_index].length do
      inner_leng =  nds[row_index][column_index].length
      inner_index = 0
     # pp nds[row_index][column_index]
      while inner_index < inner_leng do
        # Explanation!
        # vm[row][column][spinner]
        # spinner is full of Hashes with keys :price and :name
      # grand_total += vm[row_index][column_index][inner_index][:price]
       # pp nds[row_index][column_index][inner_index]
        inner_index += 1
      end
      column_index += 1
    end
    row_index += 1
  end
#p grand_total #=> 1192

  result = {}
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
end
