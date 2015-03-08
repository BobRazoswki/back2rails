require 'rails_helper'

describe 'Documents' do

	context 'No docs' do

		it 'there is no doc' do
			visit('/documents/index')
			expect(page).to have_content('Nothing yet buddy')
		end

	end

	context 'Docs' do

		before(:each) do 
			Document.create(ref: 'INV2015-0001')
		end

		it 'has a doc and show it' do
			visit('/documents/index')
			expect(page).to have_content('INV2015-0001')
			expect(page).not_to have_content('Nothing yet buddy')
		end

	end

	context 'ADD' do

		it 'prompts the user to add an event' do
			visit('/documents')
			click_link('Add')
			fill_in('Ref',:with => 'INV2015-0001')
			click_button('Upload Doc')
			expect(page).to have_content('INV2015-0001')
			expect(current_path).to eq '/documents'
		end

	end

end
