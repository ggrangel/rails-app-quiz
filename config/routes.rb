Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  POST 'jobs' => 'jobs#create'
  GET 'jobs/:id' => 'jobs#find_job'
  GET 'jobs' => 'jobs#index'
end
