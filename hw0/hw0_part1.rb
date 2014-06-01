##Define a method sum which takes an array of integers as an argument and returns the sum of its elements. 
##For an empty array it should return zero.

def sum(arr)
return 0 if arr==nil || arr.empty?
return arr.inject(:+)
end
# puts sum([1,2,38,5])

 # Define a method max_2_sum which takes an array of integers as an argument and returns the
 # sum of its two largest elements.
 # For an empty array it should return zero. For an array with just one element, it should return that element.

def max_2_sum(arr)
	return 0 if arr==nil || arr.empty?
	return arr.last if arr.length.eql?1
	return arr.sort[-2..-1].inject(:+)
end
# puts max_2_sum([3])
# puts max_2_sum([3,2,1,3,4,10,6,7,8])
# puts max_2_sum([])

# Define a method sum_to_n? 
# which takes an array of integers and an additional integer, n, as arguments and 
# returns true if any two elements in the array of integers sum to n. An empty array should sum to zero by definition.

def sum_to_n?(arr,n)
	return false if arr==nil || arr.empty? || arr.length <=1
	return arr.permutation.any? { |x,y| x+y==n} if arr!=nil 
end

# array=[1,2,3,4,5,6,64,3]
# puts sum_to_n?(array,3)
