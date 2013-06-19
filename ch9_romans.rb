# CHAPTER 9

## Old-school Roman numerals

def old_roman_numeral number

	m = number / 1000
	d = number % 1000 / 500
	c = number % 500 / 100
	l = number % 100 / 50
	x = number % 50 / 10
	v = number % 10 / 5
	i = number % 5 / 1

	roman_numeral = ("M" * m) + ("D" * d) + ("C" * c) + ("L" * l) + ("X" * x) + ("V" * v) + ("I" * i)

	# TESTS:
	# 4667 = MMMMDCLXVII
	# 4600 = MMMMDC
	# 56 = LVI

end

puts old_roman_numeral(4667)
