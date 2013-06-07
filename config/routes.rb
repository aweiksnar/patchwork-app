Patchwork::Application.routes.draw do
  resources :users
  resources :votes

  get "/contact" => "Pages#contact", as: "contact"
  get "/about" => "Pages#about", as: "about"
  get "/home" => "Pages#home", as: "home"
  get "/blog" => "Pages#blog", as: "blog"

  root :to => "Topics#index"

  get "/signin" => "Sessions#new", as: "new_session"
  post "/sessions" => "Sessions#create"
  delete "/sessions" => "Sessions#destroy", as: "sessions"

  # Routes for the Article resource:
  # CREATE
  get '/articles/new', controller: 'articles', action: 'new', as: 'new_article'
  post '/articles', controller: 'articles', action: 'create'

  # READ
  get '/articles', controller: 'articles', action: 'index', as: 'articles'
  get '/articles/:id', controller: 'articles', action: 'show', as: 'article'

  # UPDATE
  get '/articles/:id/edit', controller: 'articles', action: 'edit', as: 'edit_article'
  put '/articles/:id', controller: 'articles', action: 'update'

  # DELETE
  delete '/articles/:id', controller: 'articles', action: 'destroy'
  #------------------------------

  # Routes for the Subtopic resource:
  # CREATE
  get '/subtopics/new', controller: 'subtopics', action: 'new', as: 'new_subtopic'
  post '/subtopics', controller: 'subtopics', action: 'create'

  # READ
  get '/subtopics', controller: 'subtopics', action: 'index', as: 'subtopics'
  get '/subtopics/:id', controller: 'subtopics', action: 'show', as: 'subtopic'

  # UPDATE
  get '/subtopics/:id/edit', controller: 'subtopics', action: 'edit', as: 'edit_subtopic'
  put '/subtopics/:id', controller: 'subtopics', action: 'update'

  # DELETE
  delete '/subtopics/:id', controller: 'subtopics', action: 'destroy'
  #------------------------------

  # Routes for the Topic resource:
  # CREATE
  get '/topics/new', controller: 'topics', action: 'new', as: 'new_topic'
  post '/topics', controller: 'topics', action: 'create'

  # READ
  get '/topics/:id/beg_articles', controller: 'topics', action: 'beg_articles', as: 'beg_articles'
  get '/topics/:id/int_articles', controller: 'topics', action: 'int_articles', as: 'int_articles'
  get '/topics/:id/adv_articles', controller: 'topics', action: 'adv_articles', as: 'adv_articles'
  get '/topics', controller: 'topics', action: 'index', as: 'topics'
  get '/topics/:id', controller: 'topics', action: 'show', as: 'topic'

  # UPDATE
  get '/topics/:id/edit', controller: 'topics', action: 'edit', as: 'edit_topic'
  put '/topics/:id', controller: 'topics', action: 'update'

  # DELETE
  delete '/topics/:id', controller: 'topics', action: 'destroy'
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get '/categories/new', controller: 'categories', action: 'new', as: 'new_category'
  post '/categories', controller: 'categories', action: 'create'

  # READ
  get '/categories', controller: 'categories', action: 'index', as: 'categories'
  get '/categories/:id', controller: 'categories', action: 'show', as: 'category'

  # UPDATE
  get '/categories/:id/edit', controller: 'categories', action: 'edit', as: 'edit_category'
  put '/categories/:id', controller: 'categories', action: 'update'

  # DELETE
  delete '/categories/:id', controller: 'categories', action: 'destroy'
  #------------------------------

end
