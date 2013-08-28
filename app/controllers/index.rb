get '/' do
  redirect '/notes'
end

get '/notes' do
  @notes = Note.all
  erb :notes
end

post '/notes' do
  @note = Note.create(params)
  content_type :json
  { :title => @note.title, :content => @note.content }.to_json
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
