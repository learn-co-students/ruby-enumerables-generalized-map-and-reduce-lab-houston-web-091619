def map(a)
  
  new = []
  i = 0
  
  while i < a.length
    new.push(yield(a[i]))
    i += 1
  end
  
  new

end

def reduce(a, starting_p=nil)
  
  if starting_p
    sum = starting_p
    i = 0
  else
    sum = a[0]
    i = 1
  end
  
  while i < a.length
    sum = yield(sum, a[i])
    i += 1
  end
  
  sum

end
