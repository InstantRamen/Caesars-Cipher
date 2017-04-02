require_relative 'caesars_cipher'

puts "What would you like to cipher?"
text = gets.chomp


puts "What key would you like to use?"
key = gets.chomp
until key.is_int
  puts "Please enter an integer!"
  key = gets.chomp
end

puts CaesarsCipher.new(text, key).to_s
