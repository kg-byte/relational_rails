require 'rails_helper'

RSpec.describe 'the Dentist creation' do 

	it 'links to the new page from dentists index' do 
		visit '/dentists'
		click_on 'New Dentist'

		expect(current_path).to eq('/dentists/new')


	end 

end 