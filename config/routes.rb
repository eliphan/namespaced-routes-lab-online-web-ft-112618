Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs
  scope '/admin' do
    resources :stats, only: [:index]
  end
end
