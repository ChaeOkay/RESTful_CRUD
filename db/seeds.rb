i = 1
5.times do
  Note.create(:title => "Note #{i}", :content => "Content of Note #{i}")
  i += 1
end
