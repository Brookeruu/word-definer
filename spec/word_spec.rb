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

  describe('#initialize') do
    it('create a new word') do
      new_word = Word.new({:word=> 'dog', :definition=> 'woof'})
      expect(new_word.word).to(eq('dog'))
      expect(new_word.definition).to(eq(['woof']))
    end
  end

  describe('#save_word') do
    it('save new word to @@dictionary array') do
      new_word = Word.new({:word=> 'cat', :definition=> 'meow'})
      new_word.save_word
      expect(Word.all).to(eq([new_word]))
    end
  end

  describe('.find_word') do
    it('find word by its id number') do
      new_word = Word.new({:word=> 'horse', :definition=> 'nay', :id=> 1})
      new_word.save_word
      new_word2 = Word.new({:word=> 'dog', :definition=> 'woof', :id=> 2})
      new_word2.save_word
      expect(Word.find_word(1)).to(eq(new_word))
      expect(Word.find_word(2)).to(eq(new_word2))
    end
  end

  describe('.add_definition') do
    it('use find_word method to find word before adding additional definition') do
      new_word = Word.new({:word=> 'horse', :definition=> 'nay', :id=> 1})
      new_word.save_word
      expect(Word.find_word(1)).to(eq(new_word))

    end
  end

end
