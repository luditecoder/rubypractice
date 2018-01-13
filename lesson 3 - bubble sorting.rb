num = [1, 5, 7, 2, 4, 8] 
  def buble_sort(array) 
   num = []  
   array.each { |x| num.push(x)}       
   i = (num.length - 2)       
   0.upto(i) do |x| num[x], num[x+1] = num[x + 1], num[x] if num[x] > num[x+1]   
    print num   
   end     
    array.clear  
    num.each { |x| array.push(x) } 
  end    
while buble_sort(num) != num.sort do buble_sort(num)
end 
puts "Here is your final array:"
print num   
