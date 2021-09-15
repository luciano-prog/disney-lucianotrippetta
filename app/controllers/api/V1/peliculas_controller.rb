module Api
	module V1
		class PeliculasController < ApplicationController
			before_action :set_pelicula, only: [:show, :destroy]

			def index
					@peliculas = Pelicula.todos_los_que_no_fueron_borrados_logicamente
					where(delete_at: nil)
			end

			def show
		
			end

			def create
				@pelicula = pelicula.new({titulo:"alicia en el pais de las maravillas", calificacion:"5"})
				@pelicula.save
			end

			def update
				@pelicula = Pelicula.find(params[:id])
				@pelicula.update(pelicula_params)
			end

			def destroy
				@pelicula = Pelicula.find(params[:id])
				@pelicula.soft_destroy
			end

			private

			def pelicula_params
				params.require(:pelicula).permit(:titulo, :calificacion) 
			end	

			def set_pelicula
				@pelicula = Pelicula.find(params[:id])
			end
		end
	end
end




