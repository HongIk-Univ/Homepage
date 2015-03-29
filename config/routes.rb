Cichomepage::Application.routes.draw do
  ActiveAdmin.routes(self)
  get "community_board/viewWork"
  get "community_board/edit/:id" => 'community_board#edit'
  get "community_board/delete_complete/:id" => 'community_board#delete_complete'
  get "useradd/signup"
  post "useradd/signup_complete"
  get "useradd/login"
  post "useradd/login_complete"
  get "useradd/logout_complete"
  get "/equlp" => 'equlp_board#post_equlp'
  get "equlp_board/reservation_complete"
  get "equlp_board/numstatus_complete"
  get "equlp_board/status_complete"
  root "index#index_page"
  get "index/index_complete"
  get "/cicposts" => 'community_board#cicpost'
  get "/imgposts" => 'community_board#imgpost'
  get "/dataposts" => 'community_board#datapost'
  get "/eventposts" => 'community_board#eventpost'
  get "/graduateposts" =>'community_board#graduatepost'
  get "/jobposts" => 'community_board#jobpost'
  get "/faqposts" => 'community_board#faqpost'
  get "/freeposts" => 'community_board#freepost'
  get "/login" => 'useradd#login'
  get "/signup" => 'useradd#signup'
  get "/listSpecificPageWork"=> 'community_board#listSpecificPageWork'
  get "community_board/posts"
  get "community_board/show"
  get "community_board/write"
  get "community_board/edit"
  get "/viewWork" => 'community_board#viewWork'
  post "community_board/write_complete"
  post "community_board/edit_complete"
  get "community_board/delete_complete"
  get "community_board/posts_complete"
  get "/write" => 'community_board#write'
  get "/Greetings" => 'onepage#greetings'
  get "/History" => 'onepage#history'
  get "/Introduction" => 'onepage#introduction'
  get "/Goals" => 'onepage#goals'
  get "/Procedure" => 'onepage#pistory'
  get "/Employment" => 'onepage#employment'
  get "/Curriculum" => 'onepage#curriculum'
  get "/Courses" => 'onepage#courses'
  get "/Required" => 'onepage#required'
  get "/Summary" => 'onepage#summary'
  get "/Standard" => 'onepage#standard'
  get "/SysGraph" => 'onepage#sysgraph'
  get "/Professor" => 'onepage#professor'
  get "/Assistant" => 'onepage#assistant'
  get "/Student" => 'onepage#student'
  get "/Representative" => 'onepage#representative'
  get "/Signal_lab" => 'onepage#signal_lab'
  get "/Ubiquitous_lab" => 'onepage#ubiquitous_lab'
  get "/Software_lab" => 'onepage#software_lab'
  get "/Internet_lab" => 'onepage#internet_lab'
  get "/Network_lab" => 'onepage#network_lab'
  get "/Robotics_lab" => 'onepage#robotics_lab'
  
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
