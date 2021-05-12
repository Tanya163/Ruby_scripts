def search(str,to_search)
  count=0
  str.gsub!(/#{to_search}/, "(#{to_search})")
  puts str.gsub!(/#{to_search.capitalize}/, "(#{to_search.capitalize})")
  str.split.each do |word|
    if word=="(#{to_search})" || "(#{to_search.capitalize})"
      count+=1
    end
  end
  puts "Total occurrences found: #{count}"
end
arr=gets.chomp.split
to_search=arr[-1]
arr.pop()
str=arr.join(' ')
search(str,to_search)
