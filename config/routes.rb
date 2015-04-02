Rails.application.routes.draw do
  root  'pages#home'

  get 'course' => 'pages#course'

  resources :testimonials, only: [:index, :new, :show, :create]
end
