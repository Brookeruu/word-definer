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
end
