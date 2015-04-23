Rails.application.routes.draw do
  root  'pages#home'

  get 'course' => 'pages#course'
  get 'mentor' => 'mentor#index'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :testimonials, only: [:index, :new, :show, :create, :destroy]

  resources :students
end
