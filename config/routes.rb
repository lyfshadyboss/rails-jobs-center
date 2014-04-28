Rails.application.routes.draw do

  scope 'company' do
    resources :posts, as: 'company_posts' do
      resources :requirements, only: :destroy
    end
  end

  scope 'student' do
    resources :resumes, as: 'student_resumes' do
      resources :educations, :glories, :interests, :sample_works, :skills, :work_experiences, only: :destroy
    end
  end

  devise_for :admins
  devise_for :companies
  devise_for :students

  root 'home#index'

  match '/introduce', to: 'home#introduce', via: 'get'
  match '/contact', to: 'home#contact', via: 'get'

  match '/student', to: 'student#index', via: 'get'
  match '/admin', to: 'admin#index', via: 'get'
  match '/company', to: 'company#index', via: 'get'

  get '/student/information' => 'student#information'
  get '/student/search_post' => 'student#search_post'
  get '/student/browse_post/:id' => 'student#browse_post'
  patch '/student/commit_for_update' => 'student#commit_for_update'

  get '/company/information' => 'company#information'
  get '/company/search_resume' => 'company#search_resume'
  get '/company/browse_resume/:id' => 'company#browse_resume'
  patch '/company/commit_for_update' => 'company#commit_for_update'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
