class DocumentsController < ApplicationController

	include DocumentsHelper

	def index
		@documents = Document.all
		#render 'show'
	end

	def show
		@documents = Document.all
	end

	def new
		@new_document = Document.new
	end

	def create
	    @new_document = Document.create(_document_params)
	    #@new_document.save
	    redirect_to '/documents'
  	end

  	def update
		#@new_document.update
  		#redirect_to '/documents'
  	end




end
