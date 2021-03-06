Rails.application.routes.draw do

  scope 'admin' do
    resources :news, as: 'admin_news'

    resources :subjects, as: 'admin_subjects', only: [:new, :create, :edit, :update, :destroy]
    resources :majors, as: 'admin_majors', only: [:new, :create, :edit, :update, :destroy]
    resources :company_types, as: 'admin_company_types', only: [:new, :create, :edit, :update, :destroy]
    resources :company_scales, as: 'admin_company_scales', only: [:new, :create, :edit, :update, :destroy]
    resources :post_types, as: 'admin_post_types', only: [:new, :create, :edit, :update, :destroy]
    resources :post_sub_types, as: 'admin_post_sub_types', only: [:new, :create, :edit, :update, :destroy]
  end

  scope 'company' do
    resources :delivers, only: [:destroy]

    resources :assets, as: 'company_assets', :controller => 'company/assets', :except => [:show] do
      member do
        get 'download'
      end
    end

    resources :posts, as: 'company_posts' do
      resources :requirements, only: :destroy
    end
  end

  scope 'student' do
    resources :assets, as: 'student_assets', :controller => 'student/assets', :except => [:show] do
      member do
        get 'download'
      end
    end

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
  get '/student/browse_news/:id' => 'student#browse_news'
  get '/student/browse_company/:id' => 'student#browse_company'
  patch '/student/commit_for_update' => 'student#commit_for_update'
  post '/student/deliver' => 'student#deliver_to_post'

  get '/company/information' => 'company#information'
  get '/company/search_resume' => 'company#search_resume'
  get '/company/browse_resume/:id' => 'company#browse_resume'
  get '/company/browse_news/:id' => 'company#browse_news'
  get '/company/browse_student/:id' => 'company#browse_student'
  patch '/company/commit_for_update' => 'company#commit_for_update'

  get '/admin/settings' => 'admin#settings'
  post '/admin/import_student_accounts' => 'admin#import_student_accounts'

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
