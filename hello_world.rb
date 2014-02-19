puts "hello world"
if 4 >3
	puts "4 is greater than 3"

end

def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up", "Justin", "Ben", "Kevin Sorbo")

1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }

# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"


	
my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].
my_array.sort!
	


#sort in descending order
fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! { |a,b| b<=>a}



##methods
def alphabetize(arr,rev=false)
    if rev==true
        arr.reverse!
    else
        arr.sort! 
    end
end

puts alphabetize(["1","44","2"])



"L".upto("P") { |x| puts x, " "}# Write your code below!



alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!

caption = "A giraffe surrounded by " << "weezards!"

favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{ thing}#{"!"}"
end




puts 1<2 ? "One is less than two!": "One is not less than two."



puts "What's your favorite language?"
language = gets.chomp


case language
when "Ruby" then puts"Ruby is great for web apps!"
when "Python" then puts"Python is great for science."
when "Javascript" then puts"Javascript makes websites awesome."
when "HTML" then puts"HTML is what websites are made of!"
when "CSS" then puts"CSS makes websites pretty."
else puts"I don't know that language!"
end



require 'prime'

def first_n_primes(n)
  # Check for correct input!
  "n must be an integer" unless n.is_a? Integer
  "n must be greater than 0" if n <= 0

  # The Ruby 1.9 Prime class makes the array automatically!
  prime = Prime.instance
  prime.first n
end

first_n_primes(10)


fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
# Add your code below!

doubled_fibs=fibs.collect { |x| x*2}


multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)


numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)  

# Basic getter method
  def name
    @name
  end