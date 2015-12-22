class Departement < ActiveRecord::Base
	
  attr_accessible :email, :name, :phone, :attachments_attributes
  
  has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments

  has_many :employees
  has_many :reviews
end
