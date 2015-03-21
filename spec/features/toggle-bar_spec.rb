require 'rails_helper'

describe '' do
	it 'open toggle bar', js: :true do
		visit('/')
		click_link('sidebar-toggle')
		save_and_open_page
		expect(page).to have_css('open-sidebar')
	end
end