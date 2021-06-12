Rails.application.routes.draw do
  root to: "homes#top" #ルートパス設定
  resources :books
end
