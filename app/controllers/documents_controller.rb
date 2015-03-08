class DocumentsController < ApplicationController

	include DocumentsHelper

	def index
		@documents = Document.all
		@new_document = Document.new
		@new_document.save
	end

	def show
		@documents = Document.all
	end

	def new
		#@new_document = Document.new
		#@new_document.save
		redirect_to '/documents'
	end

	def create
	    @new_document = Document.create(_document_params)
	    @new_document.save
	    redirect_to '/documents'
  	end

  	def update
  		@up_doc = Document.find(params[:id])
		@up_doc.update(_document_params)
  		redirect_to '/documents'
  	end




end
