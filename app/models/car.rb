class Car < ApplicationRecord
  belongs_to :shop

  validates_presence_of :make, :model, :year, :milage, :issues
end
