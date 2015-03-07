require 'rails_helper'

describe 'the menu' do

	it 'go the the homepage' do
		visit('/')
		expect(page).to have_content("Hello World")
	end

	it 'has a file button' do
		visit('/')
		click_link('Documents')
		expect(page).to have_content("Documents repo")
	end
	
end