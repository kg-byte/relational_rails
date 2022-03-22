require 'rails_helper'

RSpec.describe 'dentist index page' do
  it 'displays dentist information' do
    dentist = Dentist.create!(name:"Discomfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 6pm', rating: 2.1)
    dentist2 = Dentist.create!(name:"Comfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 7pm', rating: 4.1)
    visit "/dentists"
    expect(page).to have_content(dentist.name)
    # expect(page).to have_content(dentist.created_at)
    # expect(page).to have_content(dentist.updated_at)
    # expect(page).to have_content(dentist.max_patient_capacity)
    # expect(page).to have_content(dentist.accepting_new_patient)
    # expect(page).to have_content(dentist.hours)
    # expect(page).to have_content(dentist.rating)
    expect(page).to have_content(dentist2.name)
    # expect(page).to have_content(dentist2.created_at)
    # expect(page).to have_content(dentist2.updated_at)
    # expect(page).to have_content(dentist2.max_patient_capacity)
    # expect(page).to have_content(dentist2.accepting_new_patient)
    # expect(page).to have_content(dentist2.hours)
    # expect(page).to have_content(dentist2.rating)

    save_and_open_page
  end

end
