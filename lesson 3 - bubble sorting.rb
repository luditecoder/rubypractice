
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
num = [1, 5, 7, 2, 4, 8]




def buble_sort(array)
  num = []
  array.each { |x| num.push(x)}
  
  i = (num.length - 2)
  
  0.upto(i) do |x| num[x], num[x+1] = num[x + 1], num[x] if num[x] > num[x+1] 
  print num 
  end  
end 

 while buble_sort(num) != num.sort do buble_sort(num)
 end 
 #just redoes same reorginization doesn't permenantly change base array 
