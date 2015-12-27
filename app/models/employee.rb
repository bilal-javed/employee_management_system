class Employee < ActiveRecord::Base

  attr_accessible :dateofbirth, :email, :name, :qualification, :attachments_attributes

  validates_uniqueness_of :name
  
  has_one :attachment, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachment

  belongs_to :departement
end
