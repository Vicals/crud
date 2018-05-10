Rails.application.routes.draw do
  get 'reply/create'
  post 'reply/create/:id' => 'reply#create'

  get 'reply/destroy'
  get 'reply/destroy/:id' => 'reply#destroy'

  root 'post#index'

  get 'post/new'
  # get 'post/new' => 'post#new'

  get 'post/create'
  post 'post/create'

  get 'post/show'
  get 'post/show/:id' => 'post#show'

  get 'post/index'

  get 'post/update'
  post 'post/update/:id' => 'post#update'

  get 'post/edit'
  get 'post/edit/:id' => 'post#edit'

  get 'post/destroy'
  get 'post/destroy/:id' => 'post#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
