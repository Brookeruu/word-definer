require 'rspec'
require 'pry'
require 'word'

describe(Word) do
  describe('initialize') do
    it('will display dictionary as empty array') do
      expect(Word.all).to(eq([]))
    end
  end
end
