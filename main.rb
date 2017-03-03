class String
  def is_alpha
    return self.match(/^[[:alpha:]]$/) != nil
  end
end


my_key = 1
text = "abc. defg- "
def ceasars_cipher(string_to_cipher, key)
  result = ""
  string_to_cipher.scan(/./) do |letter|
    if letter.is_alpha then
      result += letter.next
    else
      result += letter
    end

  end
  puts result
end

 ceasars_cipher(text, my_key)

