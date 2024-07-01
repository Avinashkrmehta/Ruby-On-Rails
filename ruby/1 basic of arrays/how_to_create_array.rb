######## Array are ordered and integer-collections of object. #######

####### Array example
  array = [1,"two", 4.5] #=> [1,"two", 4.5]
  puts "array -> #{array}"

 ####### Creating Arrays
  array1  = Array.new               #=> []
  array2  = Array.new(3)            #=> [nil,nil,nil]
  array3  = Array.new(3, true)      #=> [true, true, true]  

  puts "array1 -> #{array1}"
  puts "array2 -> #{array2}"
  puts "array3 -> #{array3}"

  array4 = Array.new(3){Hash.new}   #=> [{},{},{}]
  array5 = Array.new(3){Hash.new(0)}   #=> [{},{},{}]

  puts "array4 -> #{array4}"
  puts "array5 -> #{array5}"

  array6 = Array.new(3){Array.new(3)} #=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
  puts "array6 -> #{array6}"

  array7 = Array({a: "Avinash", b: "kumar"})
  puts "array7 -> #{array7}"
  
 ####### Accesing the array

  arr = [1,2,3,4,5,6,7,8,9,0]
  puts arr[0].inspect           #=> 1
  puts arr[-1].inspect          #=> 0
  puts arr[1000].inspect        #=> nil 
  puts arr[-3].inspect          #=> 8
  puts arr[2..5].inspect        #=> [3, 4, 5, 6]
  puts arr[2...5].inspect       #=> [3, 4, 5]
  puts arr[3..1].inspect        #=> []
  puts arr[2..-2].inspect       #=> [3, 4, 5, 6, 7, 8, 9]

  puts arr.at(2)                #=> 3

  # To raise an error for indices outside of the array bounds or else to provide a default value when that happens, you can use fetch.

  arr = ['a', 'b', 'c', 'd', 'e', 'f']
  # puts arr.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
  puts arr.fetch(100, "oops") #=> "oops"

  puts arr.first.inspect  #=> 'a'
  puts arr.last.inspect #=> 'f'

  puts arr.take(3).inspect #=> ["a", "b", "c"]
  puts arr.drop(3).inspect #=> ["d", "e", "f"]

####### Obtaining Information about an Array

browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']
puts browsers.length #=> 5
puts browsers.count #=> 5

puts browsers.empty? #=> false

puts browsers.include?('Konqueror') #=> false
puts browsers.include?('Firefox') #=> true

#######  Adding Items to Arrays

arr = [1, 2, 3, 4]
puts arr.push(5).inspect #=> [1, 2, 3, 4, 5]
# puts arr << 6    #=> [1, 2, 3, 4, 5, 6]

puts arr.inspect

puts arr.unshift(10).inspect #=> [10, 1, 2, 3, 4, 5]

puts arr.insert(3, 'apple').inspect  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]

puts arr.insert(3, 'orange', 'pear', 'grapefruit').inspect #=> [10, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5]



#######   Removing Items from an Array


arr =  [1, 2, 3, 4, 5, 6]
puts arr.pop #=> 6
puts arr.inspect #=> [1, 2, 3, 4, 5]

#To retrieve and at the same time remove the first item, use shift:
arr =  [1, 2, 3, 4, 5, 6]
puts arr.shift #=> 1
puts arr.inspect #=> [2, 3, 4, 5, 6]

# To delete an element at a particular index:
puts arr.delete_at(2) #=> 4
puts arr.inspect #=> [2, 3, 5]

arr = [1, 2, 2, 3]
puts arr.delete(2) #=> 2
puts arr.inspect #=> [1,3]  

# A useful method if you need to remove nil values from an array is compact:

arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
puts arr.compact.inspect  #=> ['foo', 0, 'bar', 7, 'baz']
puts arr.inspect          #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
puts arr.compact!.inspect #=> ['foo', 0, 'bar', 7, 'baz']
puts arr.inspect          #=> ['foo', 0, 'bar', 7, 'baz']


arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
puts arr.uniq.inspect #=> [2, 5, 6, 556, 8, 9, 0, 123]