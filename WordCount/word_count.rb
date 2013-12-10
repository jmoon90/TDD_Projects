class WordCount
  def initialize(sentence)
    @sentence = sentence
  end

  def frequency
    word_counter = Hash.new(0)
    @sentence.split(' ').each do |word|
      word_counter[word.downcase] += 1
    end
    word_counter
  end
end

