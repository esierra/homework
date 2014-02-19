def sum(arr)
sums=0
arr.each {|x| sums+=x; }
if arr==nil || arr.empty?
	return 0
else return sums
end
end
puts sum([1,2,38,5])

=begin Define a method max_2_sum which takes an array of integers as an argument and returns the
 sum of its two largest elements.
 For an empty array it should return zero. For an array with just one element, it should return that element.
=end
def max_2_sum(arr)
	if arr==nil || arr.empty?
		return 0
	elsif arr.length==1
		return arr[0]
else
	arr.sort!
	arr.reverse!
	return arr[0] + arr[1]
	end
end
puts max_2_sum([3])

=begin
Define a method sum_to_n? 
which takes an array of integers and an additional integer, n, as arguments and 
returns true if any two elements in the array of integers sum to n. An empty array should sum to zero by definition.
=end

#returns false for the empty array with nonzero argument
def sum_to_n?(arr,n)
	if n==0
		return true
	end
	if arr==nil || arr.empty?
		return false
	else arr.sort!

	i=0
	j=arr.length-1

	while i<j
		sum=arr[i]+arr[j]
		if sum==n 
			return true
		elsif sum < n 
			i+=1
		else
			j-=1
		end
	end
	
	end
end

array=[1,2,3,4,5,6,64,3]
sum_to_n?(array,3)
