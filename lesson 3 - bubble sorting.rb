
def buble_sort(array)
  num = []
  array.each { |x| num.push(x)}
  print num 
  while num != num.sort do 
  num[0], num[1] = num[1], num[0] if num[0] > num[1]
  print num
  num[1], num[2] = num[2], num[1] if num[1] > num[2]
  print num
  num[2], num[3] = num[3], num[2] if num[2] > num[3]
  print num
  num[3], num[4] = num[4], num[3] if num[3] > num[4]
  print num
  num[4], num[5] = num[5], num[4] if num[4] > num[5]
  print num 
end 
 end 
 
  
 buble_sort([2, 5, 8, 1, 9, 3])
  
 
 
