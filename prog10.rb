# Q-10 Write a method that groups the above hash into 2 groups of 'even' and 'odd' length 
# using 'inject'. Your ruby script should accept an array as command line argument and
# output the processed hash. Eg: ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ']
# Output: {odd: [["x", 5], ["abc", "def", 234]], even: [[1234, "abcd", "mnop", "zZzZ"]]}

def array_to_hash(input_arr)
  input_arr.sort_by! { |element| element.length }
  hash = input_arr.inject({}) do |h, element|
    h[element.length] ||= []; h[element.length] << element
    h
  end
  final_hash = hash.inject({}) do |h, (key,value)| 
    if key % 2 == 0 
      h["even"] ||= []; h["even"] << value
    else
      h["odd"] ||= []; h["odd"] << value
    end
    h
  end
  p final_hash
end 
input_arr = gets.chomp.delete('"[]\'').split(',')
array_to_hash(input_arr)
