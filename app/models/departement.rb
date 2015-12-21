class Departement < ActiveRecord::Base
  attr_accessible :email, :name, :phone
  
  has_many :employees
end
