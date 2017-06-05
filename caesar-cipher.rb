puts "What would you like to encrypt?"
phrase = gets.chomp

puts "How many spaces to encrypt?"
spaces = gets.chomp.to_i

def caeser_cipher (text, number)
  result = ""
  text.split("").collect do |letter|
    if("A".."Z").include? letter
      letter = ((letter.ord - 64 + number) % 26) + 64
      letter = 90 if letter == 64
    elsif("a".."z").include? letter
      letter = ((letter.ord - 96 + number) % 26) + 96
      letter = 122 if letter == 96
    end
    letter = letter.chr if letter.is_a? Integer
    result << letter
  end
  result
end

puts caeser_cipher(phrase, spaces)