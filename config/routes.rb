Rails.application.routes.draw do
  get 'checkout/index'

  resources :shows
  resources :movie_lists
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #get 'home/index'
  root to: "home#index"
  devise_for :users
  devise_for :users, skip: :sessions, :controllers => { :passwords => "users/passwords" }
  get 'after_checkout' => 'checkout#after_checkout'
  get 'coupon_code' => 'checkout#coupon_code'
  get 'bulletin' => 'home#bulletin'
  get 'home/user_edit' => 'home#user_edit'
  get 'home/subscribe_mail' => 'home#subscribe_mail'
  get "*path" => redirect("/")

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
