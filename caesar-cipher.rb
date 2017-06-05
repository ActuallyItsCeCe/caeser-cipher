#Get the original phrase
puts "What would you like to encrypt?"
phrase = gets.chomp

#Get the number of spaces to shift
puts "How many spaces to encrypt?"
spaces = gets.chomp.to_i

#Define the cipher method
def caeser_cipher (text, number)
  #Create and empty string
  result = ""
  #Add phrase into the string
  text.split("").collect do |letter|
  	#Shift capital letters
    if("A".."Z").include? letter
      letter = ((letter.ord - 64 + number) % 26) + 64
      letter = 90 if letter == 64
    #Shift lower case letters
    elsif("a".."z").include? letter
      letter = ((letter.ord - 96 + number) % 26) + 96
      letter = 122 if letter == 96
    end
    #Convert characters back to letters and add into the result variable
    letter = letter.chr if letter.is_a? Integer
    result << letter
  end
  #return result
  result
end

puts caeser_cipher(phrase, spaces)