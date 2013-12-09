require_relative "word_count"
require "rspec"

describe WordCount do
  require 'pry'
  it "should count the frequency of each word" do
    expect(WordCount.new('Toy boat toy boat toy boat').frequency).to eql( { 'toy' => 3, 'boat' => 3 } )
  end
end
