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

## USED TO KEEP SENTENCE STRUCTURE (symbols, capitalization,etc...) ##
def str_char_validation(user_string,shift_amount)
    result = ""
    user_string.each_char do |char|
        case char
        when "a".."z"
            result << shift_str_char(char, "a".ord, shift_amount)
        when "A".."Z"
            result << shift_str_char(char, "A".ord, shift_amount)
        else 
            result << char
        end
    end
    result
end

## RETURN ENCRYPTION AND ORIGINAL ##
encrypted = str_char_validation(user_string, shift_amount)
puts("Thank you! Your encrypted sentence is:\n#{encrypted}")
original_sentence = user_string
puts("Your original sentence was:\n#{original_sentence}")