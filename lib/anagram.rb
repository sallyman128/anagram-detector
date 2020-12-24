# Your code goes here!

class Anagram
  attr_accessor :lookup_word

  def initialize(lookup_word)
    @lookup_word = lookup_word
  end

  def match(arr_of_words)
    arr_anagram = []
    arr_of_words.each do |word|
      if word.split("").sort() == @lookup_word.split("").sort()
        arr_anagram << word
      end
    end
    arr_anagram
  end

end

some_word = Anagram.new("big")

some_word.match(["gibgg","god"])