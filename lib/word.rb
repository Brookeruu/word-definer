class Word
  @@dictionary = []
  @@id_index = 1

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

  def show_def
    @definition
  end

  def save_word
    @@dictionary.push(self)
    @@id_index +=1
  end

  def self.clear
    @@dictionary = []
    @@id_index = 1
  end

  def self.find_word(id)
    words = Word.all
    words.each do |word|
      if word.id == id
        return word
      end
    end
  end

  def add_def(definition)
    new_def = (definition)
    @definition.push(definition)
    return new_def
  end

end
