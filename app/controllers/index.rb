get '/' do
  redirect '/notes'
end

get '/notes' do
  #if there is ony 1 model, sometimes just use /
  erb :index
end

#CRUD

get '/notes/new' do
  #new
end

post '/notes' do
    #create
end

get '/notes/:id' do
    #show
end

get '/notes/:id/edit' do
   #edit
end

put '/notes/:id' do
  #update
end

delete '/photos/:id' do
  #destroy
end
