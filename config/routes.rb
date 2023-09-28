# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

# PUBLICATIONS
  
  # CREATE
  get 'publications/new', to: 'publications#new', as: 'publications_new'
  post 'publications', to: 'publications#create'

  # READ
  get 'publications/index', to: 'publications#index', as: 'publications_index'
  get 'publications/:id', to: 'publications#show', as: 'publications_show'

  # UPDATE
  get 'publications/:id/edit', to: 'publications#edit', as: 'publications_edit'
  patch 'publications/:id', to: 'publications#update', as: 'publications_update'

  # DELETE
  delete 'publications/:id', to: 'publications#delete', as: 'publications_delete'



# PRINCIPAL


#REVIEWS
  get 'reviews/index', to: 'reviews#index', as: 'reviews_index'

  get 'reviews/new', to: 'reviews#new', as: 'reviews_new'
  post 'reviews', to: 'reviews#create'

  get 'reviews/:id', to: 'reviews#show', as: 'reviews_show'

  get 'reviews/:id/edit', to: 'reviews#edit', as: 'reviews_edit'
  patch 'reviews/:id', to: 'reviews#update', as: 'reviews_update'

  delete 'reviews/:id', to: 'reviews#delete', as: 'reviews_delete'

#REQUESTS
  get 'requests/index', to: 'requests#index', as: 'requests_index'

  get 'requests/new', to: 'requests#new', as: 'requests_new'
  post 'requests', to: 'requests#create'

  get 'requests/:id', to: 'requests#show', as: 'requests_show'

  get 'requests/:id/edit', to: 'requests#edit', as: 'requests_edit'
  patch 'requests/:id', to: 'requests#update', as: 'requests_update'

  delete 'requests/:id', to: 'requests#delete', as: 'requests_delete'

#COMENTS
  get 'comments/index', to: 'comments#index', as: 'comments_index'


  get 'comments/new', to: 'comments#new', as: 'comments_new'
  post 'comments', to: 'comments#create'

  get 'comments/:id/edit', to: 'comments#edit', as: 'comments_edit'
  patch 'comments/:id', to: 'comments#update', as: 'comments_update'

  get 'pages/index'
  root to: 'pages#index'

  get 'comments/:id', to: 'comments#show', as: 'comments_show'

  delete 'comments/:id', to: 'comments#delete', as: 'comments_delete'

#MESSAGES

  get 'messages/index', to: 'messages#index', as: 'messages_index'


  get 'messages/new', to: 'messages#new', as: 'messages_new'
  post 'messages', to: 'messages#create'

  get 'messages/:id/edit', to: 'messages#edit', as: 'messages_edit'
  patch 'messages/:id', to: 'messages#update', as: 'messages_update'

  get 'messages/:id', to: 'messages#show', as: 'messages_show'

  delete 'messages/:id', to: 'messages#delete', as: 'messages_delete'

  # get 'pages/show'
  # get 'pages/new'
  # get 'pages/edit'
  # get 'welcome/index'

  # root 'articles#index'
end
