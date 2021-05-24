# Q-9 Create a method for Array that returns a hash having 'key' as the length of the element 
# and value as an array of all the elements of that length. Make use of Array#each. 
# Returned Hash should be sorted by key. Your program should accept command line arguments. 

# Input argument: array-hash.rb "['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']"
# Output: {1=>["x", "5"], 3=>["abc", "def", "234"], 4=>["1234", "abcd", "mnop", "zZzZ"]}

def array_to_hash(input_arr)
  hash = Hash.new
  input_arr.sort_by! { |element| element.length }
  input_arr.each do |element|
    key = element.length
    hash[key] ||= []; hash[key] << element
  end
  puts hash
end

input_arr = ARGV[0].slice(1...(ARGV[0].size - 1)).delete("\'").split(",").map(&:to_s)
array_to_hash(input_arr)
