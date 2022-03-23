require 'rails_helper'


RSpec.describe 'dentist index page' do
  it 'displays dentist information' do
    dentist = Dentist.create!(name:"Discomfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 6pm', rating: 2.1)
    dentist2 = Dentist.create!(name:"Comfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 7pm', rating: 4.1)
    visit "/dentists"
    expect(page).to have_content(dentist.name)
    expect(page).to have_content(dentist2.name)
  end

  it 'lists dentists ordered by most recently created first' do 
    dentist = Dentist.create!(name:"Discomfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 6pm', rating: 2.1)
    dentist2 = Dentist.create!(name:"Comfort Dental", max_patient_capacity:5, created_at: '2022-03-01', accepting_new_patient: true, hours: 'M-F, 9am - 7pm', rating: 4.1)
    dentist3 = Dentist.create!(name:"Just Dental", max_patient_capacity:5, created_at: '2022-03-03', accepting_new_patient: true, hours: 'M-F, 9am - 7pm', rating: 3.5)
    visit "/dentists"
    expect(dentist.name).to appear_before(dentist3.name)
    expect(dentist3.name).to appear_before(dentist2.name)
  end 


  it 'has dentists and patients list links' do 
    dentist = Dentist.create!(name:"Discomfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 6pm', rating: 2.1)
    visit '/dentists'
    expect(page).to have_link("List of Patients", :href =>'/patients')
    expect(page).to have_link("List of Dentists", :href =>'/dentists')
  end
end
