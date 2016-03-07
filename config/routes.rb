MakoveySite::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    #  match '/', to: 'pages#history', constrains: {subdomain: 'live'}, via: [:get]

    concern :paginatable do
      get '(p/:page)', :action => :index, :on => :collection, :as => ''
    end

    concern :nested_paginatable do
      get '(p/:page)', :action => :show, :on => :member, :as => ''
    end

         root to:'pages#about'
  constraints subdomain: /^$|www/ do

    resources :posts, only: [:index, :show], :concerns => :paginatable
    resources :authors, only: [:index, :show], :concerns => [:nested_paginatable, :paginatable]
    resources :rubrics, only: [:index, :show], :concerns => :nested_paginatable
    resources :classses, only: [:index, :show]
    resources :teachers, only: [:index, :show]
    get 'schedule/:id' => 'classses#schedule', as: 'schedule'
    get 'schedule' => 'classses#schedules'
    post 'schedule' => 'classses#search'
    get '/about' => 'pages#about'
    get '/history' => 'pages#history'
    get '/contacts' => 'pages#contacts'
  end


  scope module: 'live' do
    constraints subdomain: 'live' do
      get '/' => 'posts#index'
      get '/about' => 'pages#about'
      resources :posts, only: [:index, :show]
      resources :authors, only: [:index, :show]
      resources :rubrics, only: [:index, :show]
    end
  end


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
