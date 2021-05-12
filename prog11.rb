def triangle(n)
  (0..n).each{|r|
    st=[1]
    term=1
    k=1
    (0..r-1).step(1){|index|
      term=term*(r-k+1)/k
      lst.push term 
      k+=1
    }
    yield(lst)
  }
end
n=gets.chomp.to_i
triangle(n){ |lst| p lst }
