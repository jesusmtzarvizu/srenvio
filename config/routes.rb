Rails.application.routes.draw do
  get 'package2/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#greeting"
end
