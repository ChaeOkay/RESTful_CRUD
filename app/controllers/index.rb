get '/' do
  redirect '/note'
end

get '/note' do
  #index - displays a list of all photos
  #if there is ony 1 model, sometimes just use /
  @notes = Note.all
  erb :index
end

#CRUD

get '/note/new' do
  #new - returns an HTML form creating a new note
  erb :new_note
end

post '/note' do
    #create - creates a new note
  erb :new_note_confirmation
end

get '/note/:id' do
    #show - shows a specific note
    @note = Note.find_by_id(params[:id])
    erb :show_note
end

get '/note/:id/edit' do
   #edit - returns an HTML form for editing a photo
   erb :edit_note
end
