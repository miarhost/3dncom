Rails.application.routes.draw do

  root 'landing#home'
  get '/home', to: 'landing#home'
  get '/about', to: 'landing#about'
  get '/gallery', to: 'landing#gallery'
  get 'about(/:articles)', to: 'landing#about'
  get 'home(/:topics)', to: 'landing#home'

    devise_for :admins, controllers: {
        sessions: 'admins/sessions'
      }
    
  devise_scope :admin do
    get "admins/home"=> "admins/sessions#home", :as => "admin_home"
  end

    resources :topics do
       resources :messages
    end

      devise_for :users do #controllers: {sessions: 'users/sessions'}
      #as :user do 
      #get 'signin', to: 'devise/sessions#new', as: :new_user_session
       #end
         resources :topics
           resources :comments
            resourcces :messages
            
          end # , path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }

  #get '/users' => 'landing#home', as: :user_root    #temporarily

  #devise_scope :user do
    #get 'login', to: 'landing#home' 
 #end

  resources :articles do
  	resources :comments
  end
    

end
