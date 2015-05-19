total=0
fib_vars = [0,1,0]

begin
	fib_vars[2] = fib_vars[0] + fib_vars[1]
	total += fib_vars[2] unless fib_vars[2]%2 != 0 
	puts "#{fib_vars[2]} : Total = #{total}"
	fib_vars.rotate!
end while fib_vars[2] <= 1_000_000
