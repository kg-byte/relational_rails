
require 'rails_helper'

describe 'all index and show pages have links to dentists and patients index page' do 

  it 'has dentists and patients list links' do 
    dentist = Dentist.create!(name:"Discomfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 6pm', rating: 2.1)
    patient = dentist.patients.create!(name:"Angela Morris", age: 28, insurance_carrier: 'Delta Dental', referred_by: 'NA', referred_by_another_patient:false)

    visit "/dentists/#{dentist.id}/patients"

    expect(page).to have_link("All Patients", :href =>'/patients')
    expect(page).to have_link("All Dentists", :href =>'/dentists')

    visit '/dentists'

    expect(page).to have_link("All Patients", :href =>'/patients')
    expect(page).to have_link("All Dentists", :href =>'/dentists')

    visit "/dentists/#{dentist.id}"

    expect(page).to have_link("All Patients", :href =>'/patients')
    expect(page).to have_link("All Dentists", :href =>'/dentists')


    visit "/patients"
    expect(page).to have_link("All Patients", :href =>'/patients')
    expect(page).to have_link("All Dentists", :href =>'/dentists')


     visit "/patients/#{patient.id}"
     expect(page).to have_link("All Patients", :href =>'/patients')
     expect(page).to have_link("All Dentists", :href =>'/dentists')

 end 
end