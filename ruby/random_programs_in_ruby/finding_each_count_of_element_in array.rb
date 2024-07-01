array = [1,4,6,8,9,1,2,3,4,5,6,7,3,4,5,6,7,8,9]
result = Hash.new(0)

array.each do |arr|
  # puts result[arr]
 result[arr] += 1
end
puts result



