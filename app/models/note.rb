class Note < ActiveRecord::Base
  validates_presence_of :title, :content
  validates_uniqueness_of :title, :content
end
