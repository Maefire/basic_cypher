require "pry-byebug"

## GET AND STORE USER INPUT FOR STRING/SHIFT ##
puts("Welcome! To begin, please enter a sentence that you would like to encrypt:")
user_string = gets.chomp
puts("Thank you. Now please enter how many letters over you would like to shift your sentence:")
shift_amount = gets.chomp.to_i

## SPLIT STRING, SHIFT EACH CHARACTER, RETURN EACH CHARACTER ##
def shift_str_char(char, base, shift_amount)
    (((char.ord - base) + shift_amount) % 26 + base).chr
end
