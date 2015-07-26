puts "Word please: "
text = gets.chomp.downcase

puts "Number please: "
n = gets.chomp.to_i


def caesar_cipher(text, n)
	alphabet = ('a'..'z').to_a # turns each letter into its own array
	key = Hash[alphabet.zip(alphabet.rotate(n))] 
	# key takes the alphabet and repeats it depending on the number n
	text.each_char.inject("") { |encrypted, char| encrypted + key[char] }
end

puts caesar_cipher(text, n)