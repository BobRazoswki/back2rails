require 'rails_helper'

describe 'DOCUMENTS' do

	it 'there is no doc' do
		visit('/documents/')
		expect(page).to have_content('Nothing yet buddy')
	end

	xcontext 'Add' do
		it 'prompts the user to add an event' do
			visit('/documents')
			click_link('Add')
			fill_in('Ref',:with => 'INV2015-0001')
			fill_in('Status',:with => 'ok')
			click_button('submit')
			expect(page).to have_content('INV2015-0001')
			expect(page).to have_content('ok')
			expect(current_path).to eq '/documents'
		end
	end

	context 'ADD with ajax' do
		it 'show directly the new entry' do
			visit('/documents')
			click_link 'Add'
			fill_in('Ref',:with => 'Aa')
			click_button('submit')
			expect(current_path).to eq '/documents'
			expect(page).to have_content('Aa')
		end
	end

	context 'View' do
		let!(:test){Document.create(ref:'INV2015-0001')}
		it 'has a doc and show it' do
			visit('/documents/')
			expect(page).to have_content('INV2015-0001')
			expect(page).not_to have_content('Nothing yet buddy')
		end
	end

	context 'Edit' do
		before {Document.create ref: 'bob', status: 'yes'}
		it 'let the user edit a doc' do
			visit('/documents')
			expect(page).to have_content('bob')
			expect(page).to have_content('yes')
			click_link "edit_bob"
			fill_in('Ref', with: 'bobby')
			fill_in('Status', with: 'no')
			click_button 'Update Document'
			expect(page).to have_content('bobby')
			expect(page).to have_content('no')
			expect(current_path).to eq '/documents'
		end
	end

	context 'Delete' do
		before {@document = Document.create ref: 'al'}
		it 'let the user delete a doc' do
			visit('/documents')
			expect(page).to have_content('al')
			click_link 'delete_al'
			expect(page).not_to have_css 'span', text: 'Ref: al'
			expect(page).not_to have_content('al')
			expect(page).to have_content 'Document deleted successfully'
		end
	end

end
