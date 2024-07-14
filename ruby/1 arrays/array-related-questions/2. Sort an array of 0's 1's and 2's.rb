=begin
Problem statement
The task revolves around sorting an array that only consists of elements with values of 0, 1, or 2.

                          array = [1,2,0,2,1,0,2,1,0,2,0]
                          output = [0,0,0,0,1,1,1,2,2,2,2]
=end

# Using selection sort we have sorted the array
def sort_arrays(arr,n)
  for i in 0...n do
    min = i;
    for j in (i+1)...n do 
      if(arr[j] < arr[min])
        min = j
      end
    end
    temp = arr[min]
    arr[min] = arr[i]
    arr[i] = temp
  end
  return arr
end

array = [1,2,0,2,1,0,2,1,0,2,0]
print sort_arrays(array,array.length)
