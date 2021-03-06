Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  ### resourcesでrouteを定義するとRESTful URLセットが使えるようになる
  # HTTPリクエスト	URL	アクション	名前付きルート	用途
  # GET	/users	index	users_path	すべてのユーザーを一覧するページ
  # GET	/users/1	show	user_path(user)	特定のユーザーを表示するページ
  # GET	/users/new	new	new_user_path	ユーザーを新規作成するページ (ユーザー登録)
  # POST	/users	create	users_path	ユーザーを作成するアクション
  # GET	/users/1/edit	edit	edit_user_path(user)	id=1のユーザーを編集するページ
  # PATCH	/users/1	update	user_path(user)	ユーザーを更新するアクション
  # DELETE	/users/1	destroy	user_path(user)	ユーザーを削除するアクション
  resources :users
end
