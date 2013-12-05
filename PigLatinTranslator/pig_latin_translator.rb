require 'pry'
class PigLatinTranslator
  def initialize(word)
    @word = word
    @split_word = @word.split('')
    @total_count = 0
  end

  def translate
    if first_letter_check == 'vowel'
      end_letter = 'way'
      @word + end_letter
    else
      consonant
      @total_count.times { @split_word.shift }
      end_letter = @consonant_letters.join('') + "ay"
      @split_word.join('') + end_letter
    end
  end

  def consonant
    @consonant_letters = []
     @split_word.each do |letter|
      if consonants.include?(letter)
        @total_count += 1
        @consonant_letters << letter
      else
        break
      end
    end
  end

  def first_letter_check
    @letter = @split_word[0]
    if vowel.include?(@letter)
      'vowel'
    else
     'consonant'
    end
  end

  def vowel
    ['a', 'e', 'i', 'o', 'u']
  end

  def consonants
    ['b','c','d','f','g','h','j','k','l','m',
    'n','p','q','r','s','t','v','w','x','y','z']
  end
end
