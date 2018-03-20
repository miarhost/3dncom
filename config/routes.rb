Rails.application.routes.draw do

  root 'landing#home'
  get '/home', to: 'landing#home'
  get '/about', to: 'landing#about'
  get '/gallery', to: 'landing#gallery'
  get 'blender', to: 'landing#blender'
  get 'about(/:articles)', to: 'landing#about'
  get 'home(/:topicthreads)', to: 'landing#home'
  get 'home(/:topics)', to: 'landing#home'
  get 'home(/:branches)', to: 'landing#home'
  get 'home(/:blender)', to: 'landing#home'

    devise_for :admins, controllers: {
               sessions: 'admins/sessions'
      }
  
        resources :topicthreads do
        resources :branches
     end
    

               resources :branches do
              resources :topics
             end

    devise_scope :admin do
    get "admin/home"=> "admin/sessions#home", :as => 'admin'
    resources :branches
    end

      devise_for :users do #controllers: {sessions: 'users/sessions'}
      #as :user do 
      #get 'signin', to: 'devise/sessions#new', as: :new_user_session
       #end
        #get 'user/subscription', to: 'devise/mailers#subscription', :as => 'user'
         resources :messages
           resources :comments
       
     end

    resources :topics do
       resources :messages
    end
    

    resources :subscriptions #do
     # get "subsriptions"=> 'landing#home'
   # end
 #get 'home/:subscription_email', to: 'subscription_mailer#subscription'
            
           # , path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register' }
    
  #get '/users' => 'landing#home', as: :user_root    #temporarily
 
  #devise_scope :user do
    #get 'login', to: 'landing#home' 
 #end

  resources :articles do
  	resources :comments
  end
    

end
