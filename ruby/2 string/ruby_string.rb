str = "    Avinash Kumar    "
puts str.upcase
puts str.downcase
puts str.capitalize
puts str.swapcase

puts str.reverse

puts "---------length and size----------------"
puts str.length
puts str.size


puts "---------include ?----------------"
puts str.include?("a")
puts str.include?("z")

puts "--------- start_with? and end_with? ----------------"

puts str.start_with?("Avi")
puts str.end_with?("avinash")

puts "-------- index and rindex ------------"

puts str.index("a")
puts str.rindex("a")

puts "---------- sub and gsub ------------"

puts str.sub('a', 'z')
puts str.gsub('a', 'z')

puts "---------- strip, lstrip and rstrip ------------"

puts str
puts str.strip
puts str.lstrip
puts str.rstrip