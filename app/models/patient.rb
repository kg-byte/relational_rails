class Patient  < ApplicationRecord
  belongs_to :dentist
  validates_presence_of :name, :age, :insurance_carrier
end
