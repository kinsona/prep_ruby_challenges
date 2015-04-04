=begin
  
5. Primes

Write a method is_prime? which takes in a number and returns true if it is a prime number.

> is_prime?(7)
=> true
> is_prime?(14)
=> false
  
=end

def is_prime?(input_number)
  prime = true
  
  2.upto(input_number-1) do |check_factor|
    if input_number % check_factor == 0
      #then it's a factor & number is not prime
      prime = false
    end
  end

  puts prime

end

is_prime?(7) # true
is_prime?(14) # false