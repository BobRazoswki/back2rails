require 'rails_helper'

describe 'the menu' do

	it 'go the the homepage' do
		visit('/')
		expect(page).to have_content("Home")
	end

	it 'can open the sidebar and click',js: true do
		visit('/')
		click_link('sidebar-toggle')
		click_link('Documents')
		expect(page).to have_content("Documents repo")
	end
	
	it 'can open the sidebar and click',js: true do
		visit('/')
		click_link('sidebar-toggle')
		click_link('Home')
		expect(page).to have_content("Home")
	end
end