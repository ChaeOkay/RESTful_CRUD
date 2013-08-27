get '/' do
  redirect '/notes'
end

get '/notes' do
  @notes = Note.all
  erb :all
end

get '/notes/new' do
  erb :new_note
end

post '/notes' do
  Note.create(title: params[:title], content: params[:content])
  redirect '/notes'
end

get '/notes/:id' do
  note(params[:id])
  erb :single
end

get '/notes/:id/edit' do
  note(params[:id])
  erb :edit_note
end

post '/notes/:id' do
  note(params[:id])
  @note.title = params[:title]
  @note.content = params[:content]
  @note.save
  redirect "/notes/#{@note.id}"
end

delete '/notes/:id' do
  note(params[:id])
  @note.destroy
  redirect '/notes'
end
