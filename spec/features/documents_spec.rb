require 'rails_helper'

describe 'Documents spec' do

	context '' do

		it 'there is no doc' do
			visit('/documents/')
			expect(page).to have_content('Nothing yet buddy')
		end
	end

	context 'content' do

		before(:each) do 
			Document.create(ref: 'INV2015-0001')
		end

		it 'has a doc and show it' do
			visit('/documents/')
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

	context 'VIEW' do

		  let!(:test){Document.create(ref:'test-ind')}

		it 'redirect to the individual page of the doc' do
			visit('/documents')
			click_link('test-ind')
			expect(page).to have_content('test-ind')
			expect(current_path).to eq "/documents/#{test.id}"
		end

	end

	context 'EDIT' do

		before {Document.create ref: 'bob'}

		it 'let the user edit a doc' do
			visit('/documents')
			click_link('Edit bob')
			fill_in('Ref', with: 'bobby')
			click_button 'Update Document'
			expect(page).to have_content('bobby')
			expect(current_path).to eq '/documents'
		end
	end

	context 'DELETE' do

		before do
			@document = Document.create ref: 'al' 
		end

		it 'let the user delete a doc' do
			visit('/documents')
			expect(page).to have_content('al')
			#save_and_open_page
			find("#document_al").click_link 'Delete'
			expect(page).not_to have_content('Ref: al')
		end

	end








end
