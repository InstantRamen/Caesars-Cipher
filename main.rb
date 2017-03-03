class String
  def is_alpha
    return self.match(/^[[:alpha:]]$/) != nil
  end
  def is_int
    return self.match(/^\d+$/) != nil
  end
end

puts "What would you like to cipher?"
text = gets.chomp


puts "What key would you like to use?"
key = gets.chomp
while !key.is_int
  puts "Please enter an integer!"
  key = gets.chomp
end
def ceasars_cipher(string_to_cipher, key)
  result = ""
  string_to_cipher.scan(/./) do |letter|
    if letter.is_alpha then
      result += letter.next
    else
      result += letter
    end

  end
  return result
end

puts ceasars_cipher(text, key)

