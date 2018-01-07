#ceasers cyphur takes a phrase and shifts the letters by an amount to assign a new letter

conversion = Hash [(:a..:z).to_a.zip((1..26).to_a)]

puts "Please input the sentance to be encoded"
encoded = $stdin.gets.chomp 
puts "Please input the key number"
number_code = $stdin.gets.chomp
encoded_letter = encoded.split
decoded = []
for encoded_letter.each do |letter|
  conversion[letter]
  return value 
  value + number_code
  conversion[value]
  let = return letter
  decoded.push(let)
end 
print decoded

#ceasers cyphur takes a phrase and shifts the letters by an amount to assign a new letter

conversion = Hash[(:a..:z).to_a.zip((1..26).to_a)]
print conversion

puts "Please input the sentance to be encoded"
encoded = $stdin.gets.chomp 
puts "Please input the key number"
number_code = $stdin.gets.chomp
encoded_letter = encoded.split
decoded = []
for encoded_letter.each do |letter, value|
  conversion[letter]
  puts value 
  updated_value = value + number_code
end 
  for updated_value.each do |letter,value|
  conversion[value]
  let = letter
  decoded.push(let)
end 

puts decoded
 
