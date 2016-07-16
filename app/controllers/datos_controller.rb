class DatosController < ApplicationController

	def index
		@persona = Persona.all	
	end

	def show
		@persona = Persona.find(params[:id])
	end

	def new
		@persona = Persona.new
	end
	#POST /datos
	def create
		@persona = Persona.new ({nombre: params[:persona] [:nombre],
								direccion: params[:persona] [:direccion],
								telefono: params[:persona] [:telefono],
								universidad: params[:persona] [:universidad]})
		if @persona.save
      		redirect_to action: 'index'
      	else
      		render :new
      	end
    end
end