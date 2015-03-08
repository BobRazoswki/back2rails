class DocumentsController < ApplicationController

	def index

	end

	def show
		@documents = Document.all
		@new_documents = Document.new
	end

end
