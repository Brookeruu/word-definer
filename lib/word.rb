class Word
  @@dictionary = []
  @@id_index = 0

  attr_accessor :word, :definition
  attr_reader :id

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = [attributes.fetch(:definition)]
    @id = @@id_index
  end

  def self.all
    @@dictionary
  end

  def save_word
    @@dictionary.push(self)
    @@id_index +=1
  end

  def self.clear
    @@dictionary = []
    @@id_index = 0
  end

  def self.find_word(id)
    words = Words.all
    words.each do |contact|
      if contact.id == id
        return words
      end
    end
  end

end
