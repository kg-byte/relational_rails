class Dentist  < ApplicationRecord
  has_many :patients
  validates_presence_of :name, :max_patient_capacity, :accepting_new_patient, :hours, :rating
end
