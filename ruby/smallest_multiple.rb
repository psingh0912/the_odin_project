max=10
seed=max*2
iterations=0

begin
	evenly_divisible=0
	#puts "Current Value: #{seed}"
	(2..max).map {|x| (seed%x==0) ? evenly_divisible+=1  : nil }
	seed+=max
	iterations+=1
end while evenly_divisible<max-1

puts "Found answer: #{seed} in #{iterations} iterations."
