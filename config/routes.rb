Rails.application.routes.draw do

  root 'landing#home'
  get '/home', to: 'landing#home'
  get '/about', to: 'landing#about'
  get '/gallery', to: 'landing#gallery'
  get 'blender', to: 'landing#blender'
  get 'about(/:articles)', to: 'landing#about'
  get 'home(/:topics)', to: 'landing#home'
  get 'home(/:branches)', to: 'landing#home'
  get 'home(/:blender)', to: 'landing#home'

    devise_for :admins, path: 'admin', skip: :registrations do
  
    resources :topicthreads
  end

   

    resources :topicthreads do
      resources :branches
    end


    resources :branches do
       resources :topics
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
