Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create' #listsコントローラー#createアクション
  get 'lists' => 'lists#index'
  # 'lists#show'の設定を、listとして利用できる↓
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  get '/top' => 'homes#top' #homesコントローラー#topアクション
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
