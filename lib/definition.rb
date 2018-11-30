require('./lib/word')

class Definition < Word
  @@definitions = []

  attr_reader :id, :word
  attr_accessor :new_definition

  def initialize(definition)
    @new_definition = definition
  end

  def self.all_new_defs
    @@definitions
  end

  def self.view_new_def
    @new_definition
  end

  def self.clear_new_defs
    @@definitions = []
  end

  def add_definition(id)
    new_definition = Definition.find_word(id)

  end

  def clear_new_definition

  end

end
