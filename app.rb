require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('.lib/**/*.rb')
require('./lib/word')


get('/') do
  @dictionary = Word.all
  erb(:input)
end

post('/output') do
  @new_word = params["word"]
  @definition = params["definition"]
  new_word = Word.new({:word=> @new_word, :definition=> @definition})
  new_word.save_word
  @id = new_word.id
  @dictionary = Word.all
  erb(:input)
end

get('/output/:id') do
  @id = params[:id].to_i
  new_word = Word.find_word(@id)
  @new_word = new_word.word
  new_definition = Word
  # @definition = Word.add_def
  @dictionary = Word.all
  erb(:output)
end

post('/add_defs/:id') do
  @id = params[:id].to_i
  new_word = Word.find_word(@id)
  @new_word = new_word.word

  # @new_word = new_word.word
  new_definition = params["definition"]
  @definition = new_word.add_def(new_definition)
  @dictionary = Word.all
  erb(:output)
end
