require 'rails_helper'

describe 'Documents spec' do

	context 'ADD' do

		it 'prompts the user to add an event' do
			visit('/documents')
			click_link('Add')
			fill_in('Ref',:with => 'INV2015-0001')
			fill_in('Status',:with => 'ok')
			click_button('Upload Doc')
			expect(page).to have_content('INV2015-0001')
			expect(page).to have_content('ok')
			expect(current_path).to eq '/documents'
		end

	end

		it 'there is no doc' do
			visit('/documents/')
			expect(page).to have_content('Nothing yet buddy')
		end

	context 'VIEW' do

		let!(:test){Document.create(ref:'INV2015-0001')}

		xit 'redirect to the individual page of the doc' do
			visit('/documents')
			click_link('INV2015-0001')
			expect(page).to have_content('INV2015-0001')
			expect(current_path).to eq "/documents/#{test.id}"
		end

		it 'has a doc and show it' do
			visit('/documents/')
			expect(page).to have_content('INV2015-0001')
			expect(page).not_to have_content('Nothing yet buddy')
		end

	end

	context 'EDIT' do

		before {Document.create ref: 'bob', status: 'yes'}

		it 'let the user edit a doc' do
			visit('/documents')
			expect(page).to have_content('bob')
			expect(page).to have_content('yes')
			find(".edit_bob").click_link 'Edit'
			fill_in('Ref', with: 'bobby')
			fill_in('Status', with: 'no')
			click_button 'Update Document'
			expect(page).to have_content('bobby')
			expect(page).to have_content('no')
			expect(current_path).to eq '/documents'
		end
	end

	context 'DELETE' do

		before do
			@document = Document.create ref: 'al'
		end

		it 'let the user delete a doc' do
			visit('/documents')
			expect(page).to have_content('Ref: al')
			find(".delete_al").click_link 'Delete'
			#save_and_open_page
			expect(page).not_to have_css 'span', text: 'Ref: al'
			expect(page).not_to have_content('Ref: al')
			expect(page).to have_content 'Restaurant deleted successfully'
		end

	end








end
