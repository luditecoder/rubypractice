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

#Project Euler 5
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#create place to hold all numbers tested as multiples
factors = []
1.upto(20){|x| factors.push(x)}
print factors 

#set a counter that we will increase when all factors aren't multiples
@min_number = 1

#Adds counter until all factors are divisible 
until factors.all?{ |n| @min_number % n == 0}
@min_number += 20
#puts counter number so you can see whats happening. 
puts @min_number
end 



#Project Euler Question 6
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

#create blank hash to store all the squares
sum_of_squares = []
#block puts squares in hash 
0.upto(100){|x| sum_of_squares.push(x**2) }
print sum_of_squares
#sums all of the squares 
sum1 = 0
sum_of_squares.each{|n| sum1 += n}
puts sum1

#summation of all integers
sum2 = 0

0.upto(100){|x| sum2 += x}
print sum2
#squares the sum 
square_of_sum = sum2 ** 2 
puts square_of_sum

difference = square_of_sum - sum1 
puts difference 

#Project Euler Question 6 
#73167176531330624919225119674426574742355349194934
# 96983520312774506326239578318016984801869478851843
# 85861560789112949495459501737958331952853208805511
# 12540698747158523863050715693290963295227443043557
# 66896648950445244523161731856403098711121722383113
# 62229893423380308135336276614282806444486645238749
# 30358907296290491560440772390713810515859307960866
# 70172427121883998797908792274921901699720888093776
# 65727333001053367881220235421809751254540594752243
# 52584907711670556013604839586446706324415722155397
# 53697817977846174064955149290862569321978468622482
# 83972241375657056057490261407972968652414535100474
# 82166370484403199890008895243450658541227588666881
# 16427171479924442928230863465674813919123162824586
# 17866458359124566529476545682848912883142607690042
# 24219022671055626321111109370544217506941658960408
# 07198403850962455444362981230987879927244284909188
# 84580156166097919133875499200524063689912560717606
# 05886116467109405077541002256983155200055935729725
# 71636269561882670428252483600823257530420752963450

#Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?

@number = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450".split(//).map{|c| c.to_i}
print @number 

@product = 1
def product_of_13(i)
  product = 1 
@number[i,13].each{|x| @product = product if @product < product *=x}
puts product
end 

1.upto(1000){|x| product_of_13(x)}

puts @product
