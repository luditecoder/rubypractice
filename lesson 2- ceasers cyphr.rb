#ceasers cyphur takes a phrase and shifts the letters by an amount to assign a new letter

conversion = Hash[("a".."z").to_a.zip((1..26).to_a)]


puts "Please input the sentance to be encoded"
encoded = $stdin.gets.chomp 
puts "Please input the key number"
number_code = $stdin.gets.chomp
encoded_letter = encoded.chars!

decoded = []
for encoded_letter.each_key do |letter|
  val = conversion[letter]

  updated_value = val + number_code
end 
=begin 
  for updated_value.each_value do |value|
  let = conversion[value]
  
  decoded.push(let)
end 
end 
puts decoded
=end 

puts "what is the sentance that you would like to encrypt?"
sentance = gets.chomp.to_s 
puts "what is the number that you want to shift by?"
shift = gets.chomp.to_i 




ascii = sentance.chars.map(&:ord)
shifted = ascii.map { |c| c + shift }
shifted.map { |c| c.chr }. join 


