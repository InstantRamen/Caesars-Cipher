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
until key.is_int
  puts "Please enter an integer!"
  key = gets.chomp
end


def ceasars_cipher(string_to_cipher, key)
  result = ""
  string_to_cipher.scan(/./) do |letter|
    letter_result = letter
    key.to_i.times do |i|
      if letter.is_alpha then
        letter_result = letter_result.next
      else
        letter_result = letter
      end
    end
    result += letter_result
  end
  return result
end

puts ceasars_cipher(text, key)

