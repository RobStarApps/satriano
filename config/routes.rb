Satriani::Application.routes.draw do

  get "home/index"


  devise_for :users
  root :to => 'home#index'
  

  resources :user_addresses

  resources :user_skills
  resources :messages

 
  get 'calendar', to: 'calendar#index'
  get 'profile', to: 'profile#index'

 localized do



  scope 'lessions', controller: 'landingpages' do

 
    post 'landingpages', action: 'add_filter'
    get 'landingpages', action: 'show'
    delete 'landingpages', action: 'delete_filter'


    get '/guitar/:city', action: 'show',  defaults: {instrument: 'guitar'}
    get '/guitar', action: 'show',   defaults: {instrument: 'guitar'}

    get '/drums/:city', action: 'show',  defaults: {instrument: 'drums'}
    get '/drums', action: 'show',   defaults: {instrument: 'drums'}

    get '/singing/:city', action: 'show',  defaults: {instrument: 'singing'}
    get '/singing', action: 'show',   defaults: {instrument: 'singing'}

    get '/piano/:city', action: 'show',  defaults: {instrument: 'piano'}
    get '/piano', action: 'show',   defaults: {instrument: 'piano'}

    get '/keybord/:city', action: 'show',  defaults: {instrument: 'keyboard'}
    get '/keyboard', action: 'show',   defaults: {instrument: 'keyboard'}

    get '/violine/:city', action: 'show',  defaults: {instrument: 'violine'}
    get '/violine', action: 'show',   defaults: {instrument: 'violine'}

    get '/trumpet/:city', action: 'show',  defaults: {instrument: 'trumpet'}
    get '/trumpet', action: 'show',   defaults: {instrument: 'trumpet'}

    get '/sax/:city', action: 'show',  defaults: {instrument: 'sax'}
    get '/sax', action: 'show',   defaults: {instrument: 'sax'}

    get '/flute/:city', action: 'show',  defaults: {instrument: 'flute'}
    get '/flute', action: 'show',   defaults: {instrument: 'flute'}

    

  end

  scope controller: 'static' do
    get 'contact', action: 'contact', as: 'contact'
    get 'faq', action: 'faq', as: 'faq'
    get 'imprint', action: 'imprint', as: 'imprint'
    get 'privacy', action: 'privacy', as: 'privacy'
    get 'terms', action: 'terms', as: 'terms'
  end
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'


end
