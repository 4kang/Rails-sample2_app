Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create' #listsコントローラー#createアクション
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show'
  get 'lists/edit'
  get '/top' => 'homes#top' #homesコントローラー#topアクション
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
