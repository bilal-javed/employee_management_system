class Employee < ActiveRecord::Base
  attr_accessible :dateofbirth, :email, :name, :qualification
end
