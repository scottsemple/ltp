## CHAPTER 7

# Leap Year calculator

puts "Starting year?"
start_year = gets.chomp.to_i
puts "End year?"
end_year = gets.chomp.to_i
puts "These are leap years within that range:"

 /
start: 1965
end: 1987

Need to get:
1968
1972
1976
1980
1984

((1965%4) * 4) + 4 = 1968
/

year = start_year

if year % 4 == 0
  # if no remainder, puts start and add four until end_year
  puts year
  while true
    year += 4
    puts year
    if year >= end_year
    	break
    end
  end
else
  # if remainder, then modulus*4 plus 4, add four until end_year
  year = (start_year / 4 * 4) + 4
  puts year
  while true
    year += 4
    puts year
    if year >= end_year
    	break
    end
  end
end