Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # See all tasks
  get '/tasks', to: 'tasks#index'

  # Create a task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # read one task (show)
  get '/tasks/:id', to: 'tasks#show', as: :task

  # update a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # delete a task (destroy)
  delete '/tasks/:id', to: 'tasks#destroy'
end
