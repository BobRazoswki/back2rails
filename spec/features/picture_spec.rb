require 'rails_helper'

describe '' do
	context '' do
		it '' do
			visit('/documents')
			click_link 'Add'
			fill_in('Ref', :with => "bob")
			attach_file 'Pic', Rails.root.join('spec/images/Bob_razowski-1.jpg')
			click_button 'Upload Doc'
			#save_and_open_page
			expect(page).to have_css('.img_bob')
		end
	end
end