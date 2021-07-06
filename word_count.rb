=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  def initialize(words)
    @words = words
  end

  def word_count
    word_count = Hash.new(0)
    normalized_words.each{|w| word_count[w] += 1}
    word_count
  end

  private
  def normalized_words
    @words.downcase.split(non_word_characters)
  end

  def non_word_characters
    /\W+/
  end
end