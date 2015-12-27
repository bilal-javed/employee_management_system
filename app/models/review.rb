class Review < ActiveRecord::Base
  attr_accessible :review

  belongs_to :departement

  belongs_to :user
end
