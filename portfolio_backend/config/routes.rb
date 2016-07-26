Rails.application.routes.draw do
  match '/message',     to: 'message#new',             via: 'get'
  resources "message", only: [:create]
end
