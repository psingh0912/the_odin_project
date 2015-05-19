sum=0
multiples = (1..1000).select {|x| x%3==0 || x%5==0}
multiples.each {|y| sum+=y}
puts sum 

