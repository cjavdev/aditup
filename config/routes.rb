Aditup::Application.routes.draw do
  root :to => "root#root"

  devise_for :account_managers
  devise_for :users,
             :controllers => {
               :omniauth_callbacks => "omniauth_callbacks"
             }
end
