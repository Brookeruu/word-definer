# require('./lib/word')
#
# class Definition < Word
#   @@definitions = []
#
#   attr_reader :id, :word
#   attr_accessor :new_definition
#
#   def initialize(attribute)
#     @new_definition = attribute.fetch(:new_definition)
#   end
#
#   def self.all_new_defs
#     @@definitions
#   end
#
#   def view_new_def
#     @new_definition
#   end
#
#   def self.clear_new_defs
#     @@definitions = []
#   end
#
#   def add_definition(id)
#     new_definition = Definition.find_word(id)
#   end
#
#   def clear_new_definition
#   end
#
# end
