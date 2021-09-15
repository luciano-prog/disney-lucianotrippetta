Rails.application.routes.draw do
	devise_for :admins
	devise_for :users, controllers: {
		sessions: "api/v1/users/sessions",
		registrations: "api/v1/users/registrations"
	}
	namespace :api do
		namespace :v1 do
			resouerces :peliculas
		end
	end
  resources :peliculas
  resources :generos
end

