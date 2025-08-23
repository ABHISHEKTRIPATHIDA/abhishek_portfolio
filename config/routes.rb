Rails.application.routes.draw do
  root "pages#home"
  get "about", to: "pages#about"
  get "projects", to: "pages#projects"
  get "resume", to: "pages#resume"
  get "contact", to: "pages#contact"
  get "up" => "rails/health#show", as: :rails_health_check
  post "send_message", to: "pages#send_message"
end
