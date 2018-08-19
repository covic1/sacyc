Rails.application.routes.draw do
  resources :food
  resources :order
  resources :table
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "orders/newsOrders(.:format)", to:"order#newsOrders"
  get "orders/requireOrdersTable(.:format)", to:"order#requireOrdersTable"
  get "orders/updateStatusOrdersTable(.:format)", to:"order#updateStatusOrdersTable"
end
