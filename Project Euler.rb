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

#Euler 3
#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

factors = []



1.upto(13195) {|p| factors.push(p) if 13195 % p == 0 }

print factors
factors.each {|x| factors.delete!(x) if x % 2 == 0 unless x / 2 == 1}
 print factors 
factors.each {|x| factors.delete!(x) if x % 3 == 0 unless x / 3 == 1}
 print factors 
factors.each {|x| factors.delete!(x) if x % 4 == 0 unless x / 4 == 1} 
 print factors 
factors.each {|x| factors.delete(x) if x % 5 == 0 unless x / 5 == 1}
 print factors 
factors.each {|x| factors.delete!(x) if x % 6 == 0 unless x / 6 == 1} 
 print factors 
factors.each {|x| factors.delete!(x) if x % 8 == 0 unless x / 8 == 1} 
 print factors 
 factors.each {|x| factors.delete!(x) if x % 9 == 0 unless x / 9 == 1}
 print factors 

