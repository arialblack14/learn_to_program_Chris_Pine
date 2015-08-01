header = "Table of Contents"
chapters = ["Chapter 1 : Numbers", "Chapter 2 : Letters", "Chapter 3 : Variables"]
pages = ["page 1", "page 72", "page 118"]
linewidth = 50
i = 0

puts header.center linewidth
puts
chapters.each do |chapter|
  pages.each do |page|
    puts chapters[i].ljust(linewidth/2) + pages[i].rjust(linewidth/2)
    i += 1
  end
end