class DocumentsController < ApplicationController

	include DocumentsHelper

	def index
		@documents = Document.all
	end

	def show
		@document = Document.find(params[:id])
	end

	def new
		@new_doc = Document.new
	end

	def create
	    @new_doc = Document.create(_document_params)
	    @new_doc.save
	    redirect_to '/documents'
  	end


	def update
	    @up_doc = Document.find(params[:id])
	    @up_doc.update(_document_params) 
	    redirect_to "/documents" 
  	end


  	def edit
    	@edit_doc  = Document.find(params[:id])
	end

	def destroy
		@delete_doc = Document.find(params[:id])
		@delete_doc.destroy
		redirect_to '/documents'
		flash[:notice] = 'Restaurant deleted successfully'
	end

end
