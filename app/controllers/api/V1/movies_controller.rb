module Api

	module V1

		class MovieController < ApplicationController

			before_action :set_movie, only: [:show, :destroy]

			def index

					@movies = Movie.todos_los_que_no_fueron_borrados_logicamente

					where(delete_at: nil)

			end

			def show
		
			end

			def create

				@movie = movie.new({title:"", calification:""})

				@movie.save

			end

			def update

				@movie = Movie.find(params[:id])

				@movie.update(movie_params)

			end

			def destroy

				@movie = Movie.find(params[:id])

				@movie.soft_destroy

			end

			private

			def movie_params

				params.require(:movie).permit(:title, :calification) 

			end	

			def set_movie

				@movie = Movie.find(params[:id])
				
			end

		end

	end
	
end