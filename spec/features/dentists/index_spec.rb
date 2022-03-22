require 'rails_helper'

RSpec.describe 'dentist index page' do
  it 'displays dentist information' do
    dentist = Dentist.create!(name:"Discomfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 6pm', rating: 2.1)
    dentist2 = Dentist.create!(name:"Comfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 7pm', rating: 4.1)
    visit "/dentists"
    expect(page).to have_content(dentist.name)
    expect(page).to have_content(dentist2.name)
  end

end
