Exercise: 16 Highlight Search Result
# Q-16 Write a search method that searches for a letter or word in a user input string 
# and highlights the searched element. Also it should display the total no of searches found. 
# Eg: If user enters string to be searched as "Can you can a can as a canner can can a can?" 
# and word to be searched is 'can' then output should be: 
# (Can) you (can) a (can) as a (can)ner (can) (can) a (can)? Total Occurences found: 7

def search(str, to_search)
  count = 0
  str = str.gsub(/#{to_search}/, "(#{to_search})").gsub(/#{to_search.capitalize}/, "(#{to_search.capitalize})")
  puts str
  count = str.downcase.scan("#{to_search}").count
  puts "Total occurrences found: #{count}"
end
arr=ARGV[0]
to_search=ARGV[1]
search(arr,to_search)
