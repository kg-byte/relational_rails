class Dentist  < ApplicationRecord
  has_many :patients
  validates_presence_of :name, :created_at, :updated_at, :max_patient_capacity, :accepting_new_patient, :hours, :rating
end
