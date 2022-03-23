class Patient  < ApplicationRecord
  belongs_to :dentist
  validates_presence_of :name, :age, :insurance_carrier


  def self.referred_by?

    if referred_by_anotehr_patient != nil 
      referred_by = true 
    else 
      false
    end 
  end 
end
