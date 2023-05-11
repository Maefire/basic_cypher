# get user input for string to shift, and then the shift amount to use later.
puts("Welcome! To begin, please enter a sentence that you would like to encrypt:")
user_string = gets.chomp
puts("Thank you. Now please enter how many letters over you would like to shift your sentence:")
shift_amount = gets.chomp.to_i

# Takes a character in string format, the base ordinal ("a" or "A" for English alphabet),
# and the shift amount. This amount moves char forward, until Z is hit, then loops to A
def shift_str_char(char, base, shift_amount)
  (((char.ord - base) + shift_amount) % 26 + base).chr
end

# takes in string, shift amount shifts the characters with shift_str_char(),
# and keeps capitalization, and punctuation intact.
def str_char_validation(user_string, shift_amount)
  result = ""
  user_string.each_char do |char|
    result << case char
    when "a".."z"
      shift_str_char(char, "a".ord, shift_amount)
    when "A".."Z"
      shift_str_char(char, "A".ord, shift_amount)
    else
      char
    end
  end
  result
end

# it lets the user see the original input, and the outcome after the shift.
encrypted = str_char_validation(user_string, shift_amount)
puts("Thank you! Your encrypted sentence is:\n#{encrypted}")
original_sentence = user_string
puts("Your original sentence was:\n#{original_sentence}")
