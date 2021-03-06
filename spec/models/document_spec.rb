require 'rails_helper'

RSpec.describe Document, type: :model do

	it 'register the entry in the db' do
		doc = Document.new
		doc.save
		expect(Document.count).to eq 1
	end

	it 'register well the name in the db' do
		doc = Document.new(ref:"INV2015-0001")
		doc.save
		expect(doc.ref).to eq ('INV2015-0001')
	end
  
end





