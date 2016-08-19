class Shop < ApplicationRecord
  has_many :cars

  validates_presence_of :name, :address, :hour, :base_rate, :descripton
end
