class Employee < ActiveRecord::Base

  attr_accessible :dateofbirth, :email, :name, :qualification, :attachments_attributes

  validates_uniqueness_of :name
  
  has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments

  belongs_to :departement

  has_and_belongs_to_many :projects
end
