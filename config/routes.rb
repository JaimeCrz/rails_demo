Rails.application.routes.draw do

  get 'articles/index'
  root controller: :articles, action: :index

  resources :articles, only: [:index, :show, :new, :edit]

  post 'articles/new'
  resources :articles
  end
