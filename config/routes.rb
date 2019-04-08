Rails.application.routes.draw do
  resources :coursefaculties
  resources :course_criterions
  resources :criterions
  resources :courses do
    collection {post :import}
  end
  get 'session/login'
  get 'session/do_logout'
  post 'session/do_login'
  get 'session/dashboard'
 # get '/courses' => 'courses#index', as: 'course'
root 'home#index'
  resources :faculties do
    collection {post :import}
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
