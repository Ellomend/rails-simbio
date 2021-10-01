# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tags
  resources :statuses
  resources :steps
  resources :checklists
  resources :tasks
  resources :goals
  resources :programs
  resources :nexus
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'articles#index'
  resources :articles
end
