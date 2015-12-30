class Project < ActiveRecord::Base
  attr_accessible :category, :framework, :name

  belongs_to :departement
end
