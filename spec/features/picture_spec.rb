require 'rails_helper'

describe '' do
	context '' do
		before do
			@document = Document.create(ref: 'bob', status: 'pending', pic:'')
		end
		it '' do
			visit('/documents')
			find(".img-bob")
			expect(page).to have_content('')
		end
	end
end