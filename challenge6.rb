# Given a sentence with only lowercase letters,
# print the same sentence with the first letter of every word capitalized.
# For example, if you were given "Turing is the best", return "Turing Is The Best" instead!

# goal: print the same sentence with the first letter of every word capitalized.

# method that accepts a sentence as string
def convert_sentence_to_capital(sentence)
  # split the sentence into array of words
  words = sentence.split(" ")
  # convert each word beginning to a capital letter
  # ! required to overwrite self
  words.each { |word| word.capitalize! }
  # convert array back to sentence and print
  p words.join(" ")
end

convert_sentence_to_capital("Turing is the best")
convert_sentence_to_capital("my wife's barbacoa is the best")
