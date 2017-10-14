require 'sinatra'
results = {}
get '/' do
    @title = 'Welcome to our page'
  erb :index
end

get '/cast' do 
    @vote = params['eat']
    results[@vote] = results.fetch(@vote, 0) + 1
    puts params
    erb :cast
end

get '/results' do
    @votes = results
    erb :results
end