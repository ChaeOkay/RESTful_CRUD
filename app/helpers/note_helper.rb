helpers do

  def note(id)
    @note = Note.find_by_id(id)
  end
end
