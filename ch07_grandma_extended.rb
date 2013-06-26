# CHAPTER 7

## Deaf Grandma Extended

puts "Thanks for coming, son!"

bye_counter = 0

while true
	response = gets.chomp
	if response == "BYE"
		bye_counter += 1
	else
		bye_counter = 0
	end
	if
		bye_counter >= 3
		puts "Okay, thanks for coming!"
		break
	end
	puts "HUNH?! SPEAK UP, SONNY!"
end
