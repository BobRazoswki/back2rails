class DocumentsController < ApplicationController

	def index
		
		#render 'show'
	end

	def show
		@documents = Document.all
		@new_documents = Document.new
	end

end
