class Employee < ActiveRecord::Base

  attr_accessible :dateofbirth, :email, :name, :qualification, :attachments_attributes
  
  has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments

  belongs_to :departement
end
