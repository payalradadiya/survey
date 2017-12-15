Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'survey_types#index'
  resources :survey_types
  resources :survey_questions
  resources :question_types
  resources :survey_screens
  resources :participant_surveys
end
