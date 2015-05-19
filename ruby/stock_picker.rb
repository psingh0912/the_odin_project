=begin

Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

    > stock_picker([17,3,6,9,15,8,6,1,10])
	    => [1,4]  # for a profit of $15 - $3 == $12
		Quick Tips:

		You need to buy before you can sell
		Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.
=end

# Generate 30 random stock values (between 0 & 100) and put in array

stock_prices=[]
prng = Random.new
30.times {stock_prices.insert(-1, prng.rand(100))}

# loop thru the stock prices array to find pairs of numbers with the 
# greatest difference. Smaller number should have lower index value.

def stock_picker(stock_arr)
	diff=0
	buy_date=0
	sell_date=0
	combo=(0...30).to_a.combination(2).to_a
	print combo
	puts ""
	combo.each do |x,y|
		if (stock_arr[y] - stock_arr[x]) > diff
			diff = (stock_arr[y] - stock_arr[x])
			sell_date=y
			buy_date=x
		end
	end

	puts "Buy date: #{buy_date}, Sell date: #{sell_date}, Profit: #{diff}"
end

print stock_prices
puts
stock_picker(stock_prices)

