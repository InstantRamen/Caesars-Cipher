class String
  def is_alpha
    return self.match(/^[[:alpha:]]$/) != nil
  end
  def is_int
    return self.match(/^\d+$/) != nil
  end
end

class CaesarsCipher
  @key = 0
  @original_text = ""
  @result = ""

  def initialize (original_text, key)
    @key = key
    @original_text = original_text
    @result = cipher(@original_text, @key)
  end

  def cipher(string_to_cipher, key)
    result = ""
    string_to_cipher.scan(/./) do |letter|
      letter_result = letter
      key.to_i.times do |i|
        if letter.is_alpha then
          if letter_result == "z" then
            letter_result = "a"
          elsif letter_result == "Z" then
            letter_result = "A"
          else
            letter_result = letter_result.next
          end
        else
          letter_result = letter
        end
      end
      result += letter_result
    end
    return result
  end

  def to_s
    @result
  end

end