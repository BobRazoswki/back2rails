require 'rails_helper'

describe 'Pictures' do
	it 'let the user add a picture' do
		visit('/documents')
		click_link 'Add'
		fill_in('Ref', :with => "bob")
		attach_file 'Pic', Rails.root.join('spec/images/Bob_razowski-1.jpg')
		click_button 'Upload Doc'
		expect(page).to have_css('.img_bob')
	end
end