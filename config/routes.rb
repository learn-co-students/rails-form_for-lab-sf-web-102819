Rails.application.routes.draw do
    resources :students, except: [:destroy]
    resources :school_classes, except: [:destroy]
  end