require 'rails_helper'

RSpec.describe 'dentist index page' do
  it 'displays dentist information' do
    dentist = Dentist.create!(name:"Discomfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 6pm', rating: 2.1)
    dentist2 = Dentist.create!(name:"Comfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 7pm', rating: 4.1)
    patient = Patient.create!(name:"Angela Morris", age: 28, insurance_carrier: 'Delta Dental', referred_by: 'NA', referred_by_another_patient:false, dentist_id: dentist.id)
    patient2 = Patient.create!(name:"Frank Poore", age: 36, insurance_carrier: 'Cigna Dental', referred_by: 'Angela Morris', referred_by_another_patient:true, dentist_id: dentist.id)
    visit "/dentists/#{dentist.id}"
    expect(page).to have_content(dentist.name)
    expect(page).to have_content(dentist.created_at)
    expect(page).to have_content(dentist.updated_at)
    expect(page).to have_content(dentist.max_patient_capacity)
    expect(page).to have_content(dentist.accepting_new_patient)
    expect(page).to have_content(dentist.hours)
    expect(page).to have_content(dentist.rating)
    expect(page).to have_content(2)
    visit "/dentists/#{dentist2.id}"
    expect(page).to have_content(dentist2.name)
    expect(page).to have_content(dentist2.created_at)
    expect(page).to have_content(dentist2.updated_at)
    expect(page).to have_content(dentist2.max_patient_capacity)
    expect(page).to have_content(dentist2.accepting_new_patient)
    expect(page).to have_content(dentist2.hours)
    expect(page).to have_content(dentist2.rating)
    expect(page).to have_content(0)
  end

  it 'has dentists and patients list links' do 
    dentist = Dentist.create!(name:"Discomfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 6pm', rating: 2.1)
    visit "/dentists/#{dentist.id}"
    expect(page).to have_link("List of Patients", :href =>'/patients')
    expect(page).to have_link("List of Dentists", :href =>'/dentists')
  end
end
