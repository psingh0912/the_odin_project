=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end


require 'prime'

#target=10001
target=6
prime_list=Prime.take(target)
puts prime_list[target-1]

