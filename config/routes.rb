Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#new'


  get '/home' => "home#new"
  get '/about' => "home#about"
  get '/search_suggestions' => 'home#search_suggestion'
  get '/search_course' => 'home#search_course'

  get '/view_tutors_for_course/:id' => 'tutors#view_tutors_for_course'
  get '/become_a_tutor' => 'tutors#new'
  get '/become_a_tutor/:id' => 'tutors#courses_for_department'
  get '/become_a_tutor/:id/:id' => 'tutors#tutor_course_signup'
  post '/signup_tutor' => 'tutors#signup_tutor'
  get '/delete_course_for_tutor/:course_id' => 'tutors#delete_course_for_tutor'

  get '/tutor_overview' => 'profile#tutor_overview'
  get '/courses_for_tutor' => 'profile#view_courses_for_tutor'
  get '/manage_course/:id' => 'profile#manage_course'

  post '/signup' => 'users#create'
  get '/user_profile' => 'users#user_profile'
  get '/edit_user' => 'users#edit_user'

  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
