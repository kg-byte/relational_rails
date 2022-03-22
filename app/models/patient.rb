class Patient  < ApplicationRecord
  belongs_to :dentist
  validates_presence_of :name, :age, :dentist_id, :insurance_carrier
end
