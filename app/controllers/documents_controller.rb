class DocumentsController < ApplicationController

	include DocumentsHelper

	def index
		@documents = Document.all
		#@new_document = Document.new
		#@new_document.save
	end

	def show
		#@documents = Document.all
		@document = Document.find(params[:id])
		#@doc_by_ref = Document.find(params[:id])
	end

	def new
		@new_document = Document.new
		@new_document.save
		redirect_to '/documents'
	end

	def create
	    @new_document = Document.create(_document_params)
	    @new_document.save

	    redirect_to '/documents'
  	end

  	def update
  		@document = Document.find(params[:id])
		@document.update(_document_params)
  		redirect_to '/documents'
  	end

  	def edit
  		#@document = Document.find(params[:id])
  		
  		@document.update(_document_params)
raise params.inspect
  		#@edit_doc.save
  		redirect_to '/documents'
  	end





end
