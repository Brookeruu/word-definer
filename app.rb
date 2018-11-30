require('sinatra')
require('sinatra/reloader')
also_reload('.lib/**/*.rb')
require('./lib/word')


get('/') do
  @dictionary = Word.all
  erb(:input)
end

post('/output') do
  @word = params.fetch("word")
  word = Word.new({:word=> "word", :definition=> nil})
  word.save_word
  @id = word.id
  @dictionary = Word.all
  erb(:input)
end

# get('/output/:id') do
#   @id = params[:id].to_i
#   word = Word.find_word(@id)
#   @word = word.words
#   @definition = Word.add_def
#   @dictionary = Word.all
#   erb(:output)
# end
