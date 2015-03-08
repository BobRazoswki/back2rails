module DocumentsHelper

	def _document_params
   		params.require(:document).permit(:ref)
    end


end
