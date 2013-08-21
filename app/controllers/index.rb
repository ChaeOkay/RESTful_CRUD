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
    Note.create(:title => params[:title], :content => params[:content])
  redirect '/note'
end

get '/note/:id' do
    #show - shows a specific note
    @note = Note.find_by_id(params[:id])
    erb :show_note
end

get '/note/:id/edit' do
   #edit - returns an HTML form for editing a photo
   @note = Note.find_by_id(params[:id])
   erb :edit_note
end

post '/note/:id' do
  #update - update specific note
  @note = Note.find_by_id(params[:id])
  @note.update_attributes(:title => params[:title], :content => params[:content])
  redirect '/note'
end

get '/note/:id/delete' do
  #get being used instead of delete to maintain consistancy of view
  Note.find_by_id(params[:id]).destroy
  redirect '/note'
end
