Rails.application.routes.draw do
  match '/contact',     to: 'contact#new',             via: 'get'
  resources "contact", only: [:create]
end
