## CHAPTER 7

# Leap Year calculator

puts "Let's find all of the leap years within a given range."
puts "What year would you like to start at?"
start_year = gets.chomp.to_i
puts "What year would you like to end at?"
end_year = gets.chomp.to_i
puts "These are the leap years within that range:"

year = start_year

if year % 4 == 0
  if year % 100 == 0
  	year += 4
  end
  puts year
else
  year = (start_year / 4 * 4) + 4
  puts year
end

while true
  year += 4
  if year >= end_year
  	break
  end
  if year % 100 == 0
  	year += 4
  end
  puts year
end