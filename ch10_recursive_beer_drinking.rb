def recursive_beer(bottles)
  if bottles == 0
    puts "Damn, we drank it all!"
  elsif bottles != 0
    puts "#{bottles} bottles of beer on the wall,"
    puts "#{bottles} bottles of beer,"
    puts "Take one down, pass it around..."
    bottles -= 1
    recursive_beer(bottles)
  end
end

puts recursive_beer(99)