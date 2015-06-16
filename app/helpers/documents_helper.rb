module DocumentsHelper

	def _document_params
   		params.require(:document).permit(:ref, :status)
    end


end
