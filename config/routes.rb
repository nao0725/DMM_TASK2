Rails.application.routes.draw do
  resources :bookers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index" #ルートパス設定
end
