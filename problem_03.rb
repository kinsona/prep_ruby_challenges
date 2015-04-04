=begin
  
3. Uniques

Write a method uniques which takes an array of items and returns
the array without any duplicates. Don’t use Ruby’s uniq method!

uniques([1,5,”frog”, 2,1,3,”frog”])
=> [1,5,”frog”,2,3]
  
=end

def uniques(input_array)

  output_array = Array.new

  input_array.each do |test_value|
    unless output_array.include?(test_value)
      output_array << test_value
    end
  end

  p output_array

end


uniques([1,5,"frog",2,1,3,"frog"]) #  [1,5,”frog”,2,3]