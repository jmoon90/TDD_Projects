require 'rspec'
require_relative 'pig_latin_translator'

describe PigLatinTranslator do
  it 'converts words in a phrase to pig latin' do
    expect(PigLatinTranslator.new('happy').translate).to eql('appyhay')
  end

  it 'converts words in a phrase to pig latin' do
    expect(PigLatinTranslator.new('glove').translate).to eql('oveglay')
  end

  it 'converts consonant to pig latin' do
    expect(PigLatinTranslator.new('bridge').translate).to eql('idgebray')
  end

  it 'converts words in a phrase to pig latin' do
    expect(PigLatinTranslator.new('egg').translate).to eql('eggway')
  end

  it 'converts words in a phrase to pig latin' do
    expect(PigLatinTranslator.new('inbox').translate).to eql('inboxway')
  end

  it 'converts words in a phrase to pig latin' do
    expect(PigLatinTranslator.new('eight').translate).to eql('eightway')
  end

  it 'converts words in a phrase to pig latin' do
    expect(PigLatinTranslator.new('duck').translate).to eql('uckday')
  end

  it 'determines if the first letter of the word is a consonant or vowel' do
    expect(PigLatinTranslator.new('inbox').first_letter_check).to eql('vowel')
  end

  it 'determines if the first letter of the word is a consonant or vowel' do
    expect(PigLatinTranslator.new('happy').first_letter_check).to eql('consonant')
  end

  it 'determines if the first letter is a consonant or vowel' do
    expect(PigLatinTranslator.new('eight').first_letter_check).to eql('vowel')
  end
end
