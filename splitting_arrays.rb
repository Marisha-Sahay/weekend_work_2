# Complete the method called split_array, which two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. See the driver code for examples.

def split_array(array, array_size)
  len = array.length
  arr=[]
  k = 0
  j = 0
  until k > len - 1
    i = 0
    subarray = []
    while i<array_size
      subarray.push(array[k])
      i += 1
      k += 1
    end
    j+=1
    arr.push(subarray)
  end
  return arr
end

 # Driver code - don't touch anything below this line.
 puts "TESTING split_array..."
 puts

 result = split_array([0, 1, 2, 3, 4, 5], 2)

 puts "Your method returned:"
 p result
 puts

 if result == [[0, 1], [2, 3], [4, 5]]
   puts "PASS!"
 else
   puts "F"
 end

result = split_array([0, 1, 2, 3, 4, 5], 3)

 puts "Your method returned:"
 p result
 puts

 if result == [[0, 1, 2], [3, 4, 5]]
   puts "PASS!"
 else
   puts "F"
 end