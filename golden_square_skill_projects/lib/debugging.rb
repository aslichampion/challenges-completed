def say_hello(name)
    return "hello #{name}"
end

def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[char.ord - 65]
    end
    return plaintext_chars.join
end

def factorial(n)
    product = 1
    p "at the start product is #{product}"
    while n > 1
      p "we multiply #{product} by #{n}"
      product *= n
      p "we get #{product}"
      n -= 1
    end
    product
end


def get_most_common_letter(text)
    counter = Hash.new(0)
    text.delete(' ').chars.each do |char|
      counter[char] += 1
    end
    counter.to_a.sort_by { |k, v| v }[-1][0]
end

