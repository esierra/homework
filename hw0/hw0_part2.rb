
 #Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name.
def hello(name)
	return "Hello, #{name}"
end

puts hello("Edson")


#Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise. #
#(For our purposes, a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for both upper and lower case and for nonletters
def starts_with_consonant?(s)
s =~ /\A[b-df-hj-np-tv-z]/i
end
puts starts_with_consonant?("rtheydks")

#Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is a multiple of 4. 
#NOTE: be sure it returns false if the string is not a valid binary number! => e
def binary_multiple_of_4?(s)
 return false if s=~/[^01]/ 
	s=~/[00]$/
end	
puts binary_multiple_of_4?("e")