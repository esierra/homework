module FunWithStrings
  def palindrome?
    # your code here
    #returns true if string is palindrome
    #ignores case, non-aphabetic strings
  return self.reverse.downcase.gsub(/[^a-zA-Z]/,"")==self.downcase.gsub(/[^a-zA-Z]/,"")
  end
  def count_words
    #"To be or not to be" # => {"to"=>2, "be"=>2, "or"=>1, "not"=>1}
    # your code here
    hash=Hash.new(0)
     self.downcase.gsub(/\w+/) do |x| hash[x] +=1 end
      return hash
  end
  def anagram_groups
    # your code here
ana_arr=self.split(' ')
ana_arr.each.group_by{|x| x.chars.sort}.values

  

  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
