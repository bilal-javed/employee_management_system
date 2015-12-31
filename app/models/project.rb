class Project < ActiveRecord::Base
  attr_accessible :category, :framework, :name

  belongs_to :departement

  has_and_belongs_to_many :employees
end
