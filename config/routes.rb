Rails.application.routes.draw do
  resources :movie_pa2s
  root :to => redirect('/movie_pa2s')
end