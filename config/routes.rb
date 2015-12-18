  Rails.application.routes.draw do
  devise_for :users
    root  'tweets#index'
    get 'tweets' => 'tweets#index'
    get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
    post  'tweets'      =>  'tweets#create'    #ツイート投稿機能
    get   'users/:id'   =>  'users#show'
  end