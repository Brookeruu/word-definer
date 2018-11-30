class Word
  @@dictionary = {{
    'cat'=> 'Meow',
    'dog' => 'Woof',
    'pig' => 'oink',
    'horse' => 'nay',
    'sheep' => 'baah'
  }}
  @@input_word_bank = []
  @@id_index = 0

  attr_reader :word, :definition
  attr_accessor :input_word, :input_definition

  def initialize(attributes)
    @input_word = attributes.fetch(:input_word)
    @input_definition = attributes.fetch(:input_definition)
    @id = @@id_index

  end

  def self.words
    @@word_bank
  end

  def self.input_word
    @@input_word
  end


end
