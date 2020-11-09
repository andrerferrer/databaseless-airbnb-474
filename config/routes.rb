Rails.application.routes.draw do
  # get '/', 'pages#home'
  root to: 'flats#index'
  get 'flats/:id', to: "flats#show", as: :flat
end
