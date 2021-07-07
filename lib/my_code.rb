# Your Code Here

def map(start_array)
  new_array=[]
  i=0 
  while i < start_array.length do
    #new_array << start_array[i] * 2 
    new_array << (yield (start_array[i] ))
    i += 1 
  end
  new_array
end 



def reduce(start_array, array_total=nil )
  
  if array_total
    new_total = array_total
    i = 0
    
  else
    new_total = start_array[0]
    i = 1
  end
  
  while i < start_array.length
    new_total = yield(new_total, start_array[i])
    i += 1
  end
  
  new_total
end 
