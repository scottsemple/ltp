# CHAPTER 8

## Building and sorting

words_list = []

puts "What words would you like to alphabetize?"

while true
	response = gets.chomp
	if response == ""
		break
	end
	words_list.push response
end

puts "Boom! Here ya go:"
puts words_list.sort
