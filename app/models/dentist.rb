class Dentist  < ApplicationRecord
  has_many :patients
  validates_presence_of :name, :max_patient_capacity, :accepting_new_patient, :hours, :rating

  def self.orer_by_created_at
    self.all.order(created_at: :desc)
  end 
end
