=begin
Project Euler Problem 6
The sum of the squares of the first ten natural numbers is,
1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)^2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end

number_range=(1..10)

sum_squares=0
square_sums=0

number_range.each do |x|
	sum_squares+=x**2
	square_sums+=x
end

puts "Sum square difference: #{square_sums**2} - #{sum_squares} = #{square_sums**2 - sum_squares}"



