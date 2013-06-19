# CHAPTER 8

## Table of contents, revisited

title = "Table of Contents"
chapters = [["1: Getting Started", "page 1"], ["2: Numbers", "page 9"], ["3: Letters", "page 13"]]
line_width = 26

puts ""
puts (title.center(line_width * 2))
puts ""
chapters.each do |chap|
	name = chap[0]
	page = chap[1]
	puts ("Chapter " + name.ljust(line_width) + page.rjust(line_width))
end
