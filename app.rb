require('sinatra')
require('sinatra/reloader')
also_reload('.lib/**/*.rb')
require('./lib/word')


get('/') do
  erb(:input)
end
