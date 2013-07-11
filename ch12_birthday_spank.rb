puts
puts "What year were you born in?"
year = gets.chomp

puts "What month? (Enter '1' for January, etc.)"
month = gets.chomp

puts "Day?"
day = gets.chomp

age = Time.now - Time.local(year, month, day)

puts "That makes you #{age.to_i / 31_557_600} years old."

count = age.to_i / 31_557_600

while count > 0
    puts "SPANK"
    count -= 1
end

puts "OUCH! That's old!"