require 'rails_helper'

RSpec.describe 'the Dentist edit' do

	it 'links to the edit page' do 
		dentist = Dentist.create!(name:"Discomfort Dental", max_patient_capacity:5, accepting_new_patient: true, hours: 'M-F, 9am - 6pm', rating: 2.1)
		visit "/dentists/#{dentist.id}"
		click_button 'Edit'

		expect(current_path).to eq("/dentists/#{dentist.id}/edit")
	end 

end	