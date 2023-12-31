Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
                                 sign_in: 'login',
                                 sign_out: 'logout',
                                 registration: 'signup',
                                 password: 'password'
                               },
                     controllers: {
                       sessions: 'users/sessions',
                       registrations: 'users/registrations',
                       confirmations: 'users/confirmations',
                       passwords: 'users/passwords'
                     }
end
