Rails.application.routes.draw do
  # resources
  resources :taggings
  resources :tags
  
  # article to specify comments as a sub-resource.
  resources :articles do
	resources :comments
  end

  resources :users

  #static pages 
  get 'pages/home'
  get 'pages/about'
  get 'pages/directions'

  # This line tells Rails that we have a resource named articles and the router should expect requests to follow the 
  # RESTful model of web interaction (REpresentational State Transfer). 
  # The details don’t matter right now, but when you make a request like http://localhost:3000/articles/, 
  # the router will understand you’re looking for a listing of the articles, 
  # and http://localhost:3000/articles/new means you’re trying to create a new article.
  
  
  
  # update your   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'articles#index'
  
  
end
