module FunWithStrings
  def palindrome?
    #returns true if string is palindrome
    #ignores case, non-aphabetic strings
    return self.gsub(/\W/,"").downcase.eql? self.reverse.gsub(/\W/,"").downcase
  end
  def count_words
   #"To be or not to be" # => {"to"=>2, "be"=>2, "or"=>1, "not"=>1}
   frequency=Hash.new(0)
  self.downcase.gsub(/\w+/) do |x| frequency[x]+=1 end
  return frequency
  end


  def anagram_groups
    self.split(' ').group_by {|x| x.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
