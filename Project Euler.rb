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

sum = 0
array.each { |a| sum+=a }

#Euler 2 
#find the sum of the fibonacci sereis up to 4 million
#create hash to hold fib series up to 4 million
@fib_series = [1,2]
#method to generate next numbers in fib series
def create_fib
  new_value = @fib_series[0] + @fib_series[1]
  @fib_series.push(new_value)
  @fib_series = @fib_series.sort.reverse
  print @fib_series
end
#runs method until 4 million is reached
until @fib_series.max >= 4000000
create_fib 
end 
#gets even fib numbers
even_fibs = []
@fib_series.each{|n| even_fibs.push(n) if n % 2 == 0} 
print even_fibs 
#calculates the sum of the array
sum = 0
even_fibs.each{ |a| sum+=a }
print sum 
  
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
