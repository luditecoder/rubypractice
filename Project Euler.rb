#Euler 1
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.
range = []
0.upto(1000) {|x| range.push(x)}
multiples = []
range.each {|x| multiples.push(x) if  x % 3 ==0 || x % 5 == 0}
sum = 0
multiples.each {|x| sum += x }
puts "Here is the answer"
print sum

#Euler 2
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
fibonacci = Hash.new{|h,k| h[k] = k < 2 ? k : h[k-1] = h[k-2]}
puts fibonacci[5]
