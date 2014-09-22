Rails.application.routes.draw do
 
resources :students, :staffs do
	collection { post :import}
  end

  root 'staffs#index'
end

