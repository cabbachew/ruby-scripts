# Notes:
# - convert string to number
#   A = 65, Z = 90, a = 97, z = 122
# - wrap z to a
# - keep the same case
# ? Check for valid key

def caesar_cipher(string, key)
  puts cipher_text = encode(string.split(""), key).join("")
  puts cipher_text.class
end

def encode(arr, key)
  arr.map! do |char|
     if !!/[[:lower:]]/.match(char)
       char = ((((char.ord - 97) + key) % 26) + 97).chr
     elsif !!/[[:upper:]]/.match(char)
       char = ((((char.ord - 65) + key) % 26) + 65).chr
     else
      char
     end
  end
  arr # Return array
end

caesar_cipher("What a string!", 5)
puts ""
caesar_cipher("Hello world!", 3)
puts ""
