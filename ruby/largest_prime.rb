require 'prime'

prime_factors=[]
target=500000
prime_list=Prime.take(target/2)
print prime_list
puts ""
puts "="*20
prime_list.map {|x| (target%x==0) ? prime_factors << x : nil }
puts "The largest prime factor of #{target} is: #{prime_factors.max}."
