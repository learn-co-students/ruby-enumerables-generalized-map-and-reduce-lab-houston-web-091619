def map(array)
  new = []
  num = 0
  while num < array.length do
    new << yield(array[num])
    num += 1
  end
  new
end
def reduce ( array, start_value=nil)
  if start_value
    total = start_value
    num = 0 
  else total = array[0]
    num = 1 
  end
  while num < array.length
    total = yield(total, array [num])
    num+=1 
  end
  total
end