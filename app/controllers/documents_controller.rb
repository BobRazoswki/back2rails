class DocumentsController < ApplicationController

	include DocumentsHelper

	def index
		@documents = Document.all
	end

	def show
		@document = Document.find(params[:id])
	end

	def new
		@new_document = Document.new
	end

	def create
	    @new_document = Document.create(_document_params)
	    @new_document.save
	    redirect_to '/documents'
  	end


	def update
	    document = Document.find(params[:id])
	    document.update(_document_params) 
	    redirect_to "/documents" 
  	end


  	def edit
    	@document  = Document.find(params[:id])
	end

	def destroy
		@delete_doc = Document.find(params[:id])
		@delete_doc.destroy
		redirect_to '/documents'
	end

end
