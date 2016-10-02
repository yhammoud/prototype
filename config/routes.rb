Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#new'


  get '/home' => "home#new"
  get '/search_suggestions' => 'home#load_suggestions'

  get '/become_a_tutor' => 'tutors#new'
  get '/become_a_tutor/:id' => 'tutors#courses_for_department'
  get '/become_a_tutor/:id/:id' => 'tutors#tutor_course_signup'
  post '/signup_tutor' => 'tutors#signup_tutor'


  post '/signup' => "users#create"

  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
