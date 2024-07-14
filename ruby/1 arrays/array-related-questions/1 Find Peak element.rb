=begin
Problem statement:
The problem involves finding the peak number within an array. A peak element is an element that has a value greater than its neighbors on both sides.

                        array = [20 25 35 51 15 45 70 5 ]

                        51 and 70 are peak elements in the array

=end

def find_peak_element(arr)
  result = []
  arr.each_with_index do | value, index |

    if (index > 0) && (index < arr.length - 1)
      first = index - 1
      second = index
      third = index + 1
    result << arr[second]  if (arr[second] > arr[first]) && (arr[second] > arr[third])
    end
  end
  return result
end

array = [20, 25, 35, 51, 15, 45, 70, 5 ]
puts find_peak_element(array)
 