require 'rails_helper'

describe 'Documents' do

	context 'No docs' do
		it 'there is no doc' do
			visit('/documents/index')
			expect(page).to have_content('Nothing yet buddy')
		end
	end

	context 'Docs' do

		before do 
			Document.create(ref: 'INV2015-0001')
		end

		it 'has a doc and show it' do
			visit('/documents/index')
			expect(page).to have_content('INV2015-0001')
		end

	end

	context 'ADD' do

		it 'prompts the user to add an event' do
			visit('/documents/index')
			click_link('Add a doc')
			fill_in('ref',:with => 'INV2015-0001')
			click_button('Save')
			expect(page).to have_content('INV2015-0001')
		end

	end

end
