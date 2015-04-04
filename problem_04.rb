=begin
  
4. Combinations

Write a method combinations which takes two arrays of strings
and returns an array with all of the combinations of the items in them, listing the first items first.

> combinations([“on”,”in”],[“to”,”rope”])
=> [“onto”,”onrope”,”into”,”inrope”]

  
=end

def combinations(first_array, second_array)
  output_array = Array.new

  first_array.each do |first_item|
    second_array.each do |second_item|
      output_array << first_item + second_item
    end
  end

  p output_array

end

combinations(["on","in"],["to","rope"])
combinations(["on","in","thru"],["to","rope","way"])
combinations(["on"],["to","rope","way"])
