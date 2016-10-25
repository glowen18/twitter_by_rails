Rails.application.routes.draw do

  get 'tweets/' => 'tweets#index'
  post 'tweets/' => 'tweets#create'
  get 'tweets/new' => 'tweets#new', as: :new_tweet
  get 'tweets/:id' => 'tweets#show', as: :tweet
  get 'tweets/:id/edit' => 'tweets#edit', as: :edit_tweet
  patch 'tweets/:id' => 'tweets#update'
  delete 'tweets/:id' => 'tweets#destroy'
end
