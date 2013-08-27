get '/' do
  redirect '/notes'
end

get '/notes' do
  @notes = Note.all
  erb :all
end

get '/notes/new' do
  erb :modify
end

post '/notes' do
  erb :all
end

get '/notes/:id' do
  erb :single
end

get '/notes/:id/edit' do
  erb :modify
end

puts '/notes/:id' do
  redirect '/notes/#{id}'
end

delete '/notes/:id' do
  redirect '/notes'
end
