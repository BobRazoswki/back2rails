class DocumentsController < ApplicationController

	include DocumentsHelper

	def index
		@documents = Document.all
	end

	def show
		@document = Document.find(params[:id])
	end

	def new
		@document = Document.new
	end

	def create
	    @document = Document.create(_document_params)
	    @document.save
	    redirect_to '/documents'
  	end


	def update
	    @document = Document.find(params[:id])
	    @document.update(_document_params) 
	    redirect_to "/documents" 
  	end


  	def edit
    	@document  = Document.find(params[:id])
	end

	def destroy
		@document = Document.find(params[:id])
		@document.destroy
		flash[:notice] = 'Restaurant deleted successfully'
		redirect_to '/documents'
	end

end
