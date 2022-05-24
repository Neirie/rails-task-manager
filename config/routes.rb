# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # READ
  get '/tasks', to: 'tasks#index', as: :tasks
  # CREATE
  get '/tasks/new', to: 'tasks#new', as: :newtask
  # READ
  get '/tasks/:id', to: 'tasks#show', as: :task

  # CREATE
  post '/tasks', to: 'tasks#create'

  # UPDATE
  get '/tasks/:id/edit', to: 'tasks#edit', as: :editrestaurant
  patch '/tasks/:id', to: 'tasks#update'
end
