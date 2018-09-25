require 'sinatra'

get '/' do
  erb :index, locals: {foo: 'foo'}
end
