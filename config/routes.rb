Rails.application.routes.draw do
  root to: 'pages#show', name: 'root'
  get '(*name)', to: 'pages#show'
end
