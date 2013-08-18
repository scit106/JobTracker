class Company < ActiveRecord::Base
  attr_accessible :name, :website, :notes, :source
end
