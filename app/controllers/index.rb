get '/' do
  redirect '/notes'
end

get '/notes' do
  #index - displays a list of all photos
  #if there is ony 1 model, sometimes just use /
  erb :index
end

#CRUD

get '/notes/new' do
  #new - returns an HTML form creating a new note
  erb :new_note
end

post '/notes' do
    #create - creates a new note
  erb :new_note_confirmation
end

get '/notes/:id' do
    #show - shows a specific note
    erb :show_note
end

get '/notes/:id/edit' do
   #edit - returns an HTML form for editing a photo
   erb :edit_note
end

put '/notes/:id' do
  #update - updates a specific photo
  erb :edit_note_confirmation
end

delete '/photos/:id' do
  #destroy - deletes a specific photo
  erb :delete_note_confirmation
end
