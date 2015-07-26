puts "Word please: "
text = gets.chomp.downcase

puts "Number 1-10 please: "
n = gets.chomp.to_i


def caesar_cipher(text, n)
	alphabet = [*('a'..'z')]
	alphabet.cycle(2)
	text.tr('a-z', alphabet[n..n+26].join)
end

puts caesar_cipher(text, n)