require 'rails_helper'

RSpec.describe Dentist, type: :model do

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :created_at}
    it {should validate_presence_of :updated_at}
    it {should validate_presence_of :max_patient_capacity}
    it {should validate_presence_of :accepting_new_patient}
    it {should validate_presence_of :hours}
    it {should validate_presence_of :rating}
  end


end
