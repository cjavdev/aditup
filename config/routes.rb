Aditup::Application.routes.draw do
  devise_for :users,
             :controllers => {
               :omniauth_controller => "omniauth_controller"
             }
  root :to => "root#root"
end
