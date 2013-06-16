# CHAPTER 7

## 99 Bottles of Beer

bottles = 99
while bottles != 0
	puts "#{bottles} bottles of beer on the wall,"
	puts "#{bottles} bottles of beer,"
	puts "Take one down, pass it around..."
	bottles = bottles - 1
end

puts "Damn, we drank it all!"

## Deaf Grandma

puts "Hello, son. How are you?"

response = gets.chomp
while response != response.upcase
	puts "HUH?! SPEAK UP, SONNY!"
	response = gets.chomp
end

puts ("No, not since 1938!")

## Deaf Grandma II

puts "Good to see you, dearie."

response = gets.chomp
while response != "bye".upcase
	puts "HUH?! SPEAK UP, SONNY!"
	response = gets.chomp
end

puts ("No, not since the year #{rand(1930..1950).to_s}!")
