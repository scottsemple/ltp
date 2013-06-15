# CHAPTER 8

## Table of contents, revisited

toc = ["Table of Contents", ["Chapter 1", "page 1"], ["Chapter 2", "page 9"], ["Chapter 3", "page 13"]]

line_width = 26
puts (toc[0].center(line_width * 2))
puts ""
puts (toc[2, 1].ljust(line_width) + "page 1".rjust(line_width))
puts ("Chapter 2: Numbers".ljust(line_width) + "page 9".rjust(line_width))
puts ("Chapter 3: Letters".ljust(line_width) + "page 13".rjust(line_width))