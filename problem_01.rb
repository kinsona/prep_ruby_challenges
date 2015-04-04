=begin
	
1. Power

Write a method power which takes two integers (base and exponent) and 
returns the base raised to the power of exponent. Do not use Ruby’s ** operator for this!
	
=end

def power(base, exponent)
	result = 1
	case
	  when exponent > 0 then exponent.times { result *= base }
	  when exponent == 0 then result = 1
	  when exponent < 0 then result = "Positive exponents only, please!"
	  else "error!"
	end
	return result
end

puts power(2,2) # 4
puts power(3,6) # 729
puts power(7,3) # 343
puts power(5,0) #anything to the zero = 1
puts power(0,4) #should equal zero
puts power(3,-2) #not doing negative exponents here