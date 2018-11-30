require 'rspec'
require 'pry'
require 'word'

describe(Word) do

  before() do
    Word.clear
  end

  describe('.all') do
    it('will display dictionary as empty array') do
      expect(Word.all).to(eq([]))
    end
  end

  describe('.initialize') do
    it('create a new word') do
      new_word = Word.new({:word=> 'dog', :definition=> 'woof'})
      expect(new_word.word).to(eq('dog'))
      expect(new_word.definition).to(eq(['woof']))
    end
  end


end
