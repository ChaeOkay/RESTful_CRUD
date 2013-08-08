class Note < ActiveRecord::Base
  validates_presence_of :title, :content
  attr_accessible :title, :content
end
