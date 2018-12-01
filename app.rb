require('sinatra')
require('sinatra/reloader')
also_reload('.lib/**/*.rb')
require('./lib/word')


get('/') do
  @dictionary = Word.all
  erb(:input)
end

post('/output') do
  @new_word = params.fetch("word")
  new_word = Word.new({:word=> @new_word, :definition=> nil})
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
