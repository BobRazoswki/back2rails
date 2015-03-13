class PagesController < ApplicationController
	
	def home
	end

	def index
		@documents = Document.all
		redirect_to '/documents'
	end

	def show
		@documents = Document.all
		redirect_to '/documents'
	end

	def new
		@new_document = Document.new
		redirect_to '/documents'
	end

	def create
    @new_document = Document.create(_document_params)
    @new_document.save
    redirect_to '/documents'
  end

	def update

	end

end
