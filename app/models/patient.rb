class Patient  < ApplicationRecord
  belongs_to :dentist
  validates_presence_of :name, :created_at, :updated_at, :age, :dentist_id, :referred_by, :referred_by_another_patient, :insurance_carrier
end
