Rails.application.routes.draw do
  devise_for :users # , path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }
root 'landing#home'
  get '/home', to: 'landing#home'
  get '/about', to: 'landing#about'
  get '/gallery', to: 'landing#gallery'
end
