Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


#list all
  get "tasks", to: "tasks#index"


#create
  get  "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"


#list one
  get "task/:id", to: "tasks#show", as: :task

#update
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "task/:id", to: "tasks#update"


#Delete
  delete 'tasks/:id', to: 'tasks#destroy',   as: :destroy_task
end
