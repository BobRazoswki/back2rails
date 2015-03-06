require 'rails_helper'

describe 'the menu' do

	it 'go the the homepage' do
		visit('/')
		expect(page).to have_content("Hello World")
	end
	
end