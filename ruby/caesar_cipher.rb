=begin
	This is an implementation of the Caesar Cipher, one of the
	simplest symmetric encryption methods.

	It handles upper & lower case alphabets only. Numbers and 
	punctuation marks are left untouched.
=end


puts "Enter a sentence to encrypt:"
words=gets.chomp
puts "Enter the shift_factor:"
factor=gets.chomp.to_i

def cipher(sentence,shift_factor)
	alphabet=('a'..'z').to_a + ('A'..'Z').to_a
	pos_arr=[]
	encr_sent=""

# loop to pickup index values of sentence letters in alphabet 
# array and dump them in pos_arr
	sentence.each_char do |char|
		if alphabet.include?(char)
			pos_arr.insert(-1, alphabet.index(char))
		else
			pos_arr.insert(-1, char)
		end
	end

# rotate alphabet array by shift_factor and save in new array
	new_alpha=alphabet.rotate(shift_factor)

# loop to look up new_alpha array using index values from pos_arr

	pos_arr.each do |x|
		if x.is_a? Integer
			encr_sent += new_alpha[x]
		else
			encr_sent += x
		end
	end

	return encr_sent
end

new_words=cipher(words,factor)

puts new_words
rev_words=cipher(new_words, factor*-1)
puts rev_words
