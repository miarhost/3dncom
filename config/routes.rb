Rails.application.routes.draw do
  resources :messages
  resources :articles do
  	resources :comments
  end
  
    resources :topics do
       resources :messages
    end

  devise_for :admins
  	  devise_for :users do
  	  	    resources :comments
  	  	    resourcces :messages
  	      end  # , path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }
root 'landing#home'
  get '/home', to: 'landing#home'
  get '/about', to: 'landing#about'
  get '/gallery', to: 'landing#gallery'
  get 'about(/:articles)', to: 'landing#about'
  get 'home(/:topics)', to: 'landing#home'
end
