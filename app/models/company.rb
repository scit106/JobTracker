class Company < ActiveRecord::Base
  attr_accessible :name, :website, :notes, :source

  validates_presence_of :name

end
