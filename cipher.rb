puts "Word please: "
text = gets.chomp.downcase

puts "Number 1-10 please: "
num = gets.chomp.to_i


def caesar_cipher(text, n)
	alphabet = [*('a'..'z')]
	text.tr('a-z', alphabet[n..n+26].join)

end

print caesar_cipher(text, num)