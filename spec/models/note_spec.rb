require 'spec_helper'

describe Note do

  describe 'when adding a new note' do
    let(:note) { Note.create(title: 'Weekend', content: 'Party Party Party' ) }

    it "should have a title" do
      note.title.should == 'Weekend'
    end

    it 'should have content' do
      note.content.should == 'Party Party Party'
    end

  end

end
