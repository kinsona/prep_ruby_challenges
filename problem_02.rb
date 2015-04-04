=begin
	
2. Factorial

Write a method factorial which takes a number and returns
the sum [correction: product!] of every number up to the current number multiplied together.
	
=end

def factorial(input_number)
  result = 1
  if input_number >= 0
    1.upto(input_number) { |input| result *= input }
  else
    result = "Undefined!  No negative numbers, please!"
  end

  puts result
end

factorial(3) #6
factorial(5) #120
factorial(13) #6_227_020_800
factorial(1) #1
factorial(0) #1
factorial(-3) #undefined