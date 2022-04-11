Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  namespace 'api' do
    namespace 'v1' do
      resources :jobs 
  end
end

namespace 'api' do
  namespace 'v1' do
    resources :users
end
end

end
