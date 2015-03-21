require 'rails_helper'

describe '' do
	it 'open toggle bar once', js: :true do
		visit('/')
		click_link('sidebar-toggle')
		expect(page).to have_css('.open-sidebar')
	end

	it 'open toggle bar twice', js: :true do
		visit('/')
		click_link('sidebar-toggle')
		expect(page).to have_css('.open-sidebar')
		click_link('Documents')
		expect(page).to have_content('Documents repo')
		click_link('sidebar-toggle')
		expect(page).to have_css('.open-sidebar')
	end

end