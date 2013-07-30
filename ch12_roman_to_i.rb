def roman_to_integer (roman)
  integer = 0
  numerals = { 'i' => 1,
               'v' => 5,
               'x' => 10,
               'l' => 50,
               'c' => 100,
               'd' => 500,
               'm' => 1000 }

  roman.each_char do |num|
    value = numerals[num.downcase]

    if value
      integer += value.to_i
    else
      puts "#{num} isn't a roman numeral."
    end
  end

  integer
end

puts "What roman numeral would you like to convert?"
roman = gets.chomp
puts
puts "Your roman numeral equals #{roman_to_integer(roman)}."