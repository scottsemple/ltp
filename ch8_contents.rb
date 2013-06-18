# CHAPTER 8

## Table of contents, revisited

title = "Table of Contents"
chapters = ["Chapter 1", "Chapter 2", "Chapter 3"]
pages = ["1", "9", "13"]
line_width = 26

puts ""
puts (title.center(line_width * 2))
puts ""
chapters.each do |chap| & pages.each do |page|
	puts (chap.ljust(line_width) + "page " page.rjust(line_width))
end
