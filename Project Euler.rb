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

#generate numbers to test for prime factors 
number = []
1.upto(13195) {|x| number.push(x)}
 
#create place to store factors
factors = []
@prime_factors = []
#divide number by all smaller numbers to test factors for prime
number.each do |x| factors.push(x) if 13195 % x == 0 end 
print factors


def prime_factor(num)
  1.upto(num-1){|n| @prime_factors.push(num) if num % n == 1 }
end 
  
factors.each{|x| prime_factor(x)}

print @prime_factors

#Project Euler Question 4 
#Find the largest palindrome made from the product of two 3-digit numbers.
#creates the empty hash to hold all the palindromes
@palindrome = []

#generates the multiples of all three digit numbers
100.upto(999){|n| 
n.upto(999) {|j| p = n * j 
#determines if the number is a palindrome
  if p.to_s.reverse == p.to_s
     @palindrome.push(p)
  end 
}}

print @palindrome
#gets largest palindrome
answer = @palindrome.max
print answer 
