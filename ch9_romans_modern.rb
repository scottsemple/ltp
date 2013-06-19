# CHAPTER 9

## Modern Roman numerals (between 1 and 10)

/ RULE: The numeral "I" can be placed before "V" and "X" to make 4 units (IV) and 9 units (IX) respectively /

def modern_roman number

	if number == 4
		roman_numeral = "IV"
	elsif number == 9
		roman_numeral = "IX"
	elsif number == 10
		roman_numeral = "X"
	else
		v = number / 5
		i = number % 5 / 1
		roman_numeral = ("V" * v) + ("I" * i)
	end

end

puts modern_roman(8)
