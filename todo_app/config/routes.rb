Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#match 'todo/list', :controller => 'todos', :action => list, via: :get
get 'todos', to: 'todos#index'
get 'todos/new'
post 'todos', to: 'todos#create'
get 'todos/:id', to: 'todos#show', as: 'show' 
get '/todos/:id/edit', to: 'todos#edit', as: 'edit' 
patch '/todos/:id', to: 'todos#update', as: 'update'
delete 'todos/:id/', to:'todos#destroy', as: 'delete'
get 'todo/list', to: 'todos#list', as: 'list'
end
