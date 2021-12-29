Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/brand_list", to:'brands#index'
  get "/client_list", to:'clients#index'
  get "/colour_list", to:'colours#index'
  get "/model_list", to:'model_vehicles#index'
  get "/official_list", to:'officials#index'
  get "/position_list", to:'positions#index'
  get "/service_list", to:'services#index'
  get "/serviceT_list", to:'service_types#index'
  get "/vehicle_list", to:'vehicles#index'
  get "/order_list", to:'work_orders#index'

  get "/service_typeFrm", to:'service_types#new'
  get "/service_formulario", to:'services#new'
  get "/brand_formulario", to:'brands#new'
  get "/client_formulario", to:'clients#new'
  get "/colour_formulario", to:'colours#new'
  get "/model_vehicle_formulario", to:'model_vehicles#new'
  get "official_formulario", to:'officials#new'
  get "/position_formulario", to:'positions#new'
  get "/vehicle_formulario", to:'vehicles#new'
  get "/work_order_formulario", to:'work_orders#new'


  post "/work_orders", to: 'work_orders#create'
  post "/vehicles", to:'vehicles#create'
  post"/officials", to: 'officials#create'
  post"/model_vehicles", to:'model_vehicles#create'
  post"/colours", to: 'colours#create'
  post"/clients", to: 'clients#create'
  post "/brands", to: 'brands#create'
  post "/services", to:'services#create'
  post "/service_types", to: 'service_types#create'
  post "positions", to:'positions#create'


  get"/obtener_tipo_servicio/:id", to:'service_types#edit', as: :obtener_tipo_servicio
  patch"/service_type/:id", to:'service_types#update', as: :service_type_update
  get "/service_type/:id", to:'service_types#show', as: :service_type
  get"/obtener_servicio/:id", to:'services#edit', as: :obtener_servicio
  patch"/service/:id", to:"services#update", as: :services_update
  get"/service/:id", to:'services#show', as: :service
  get"/obtener_brand/:id",to:'brands#edit', as: :obtener_brand
  patch"/brand/:id", to:'brands#update', as: :brand_update
  get"/brand/:id", to:'brands#show', as: :brand
  get"/obtener_cliente/:id", to:'clients#edit' , as: :obtener_client
  patch"/client/:id",to:'clients#update',as: :client_update
  get"/client/:id",to:'clients#show', as: :client
  get"/obtener_colour/:id", to:'colours#edit' , as: :obtener_colour
  patch"/colour/:id",to:'colours#update',as: :colour_update
  get"/colour/:id",to:'colours#show', as: :colour
  get"/obtener_modelo/:id", to:'model_vehicles#edit', as: :obtener_modelo
  patch"/model_vehicle/:id",to:'model_vehicles#update', as: :model_update
  get"/model_vehicle/:id", to:'model_vehicles#show', as: :model_vehicle
  get"/obtener_official/:id",to:'officials#edit', as: :obtener_official
  patch"/official/:id",to:'officials#update', as: :official_update
  get"/official/:id", to:'officials#show', as: :official
  get"/obtener_vehicle/:id",to:'vehicles#edit',as: :obtener_vehicle
  patch"/vehicle/:id",to:'vehicles#update', as: :vehicle_update
  get"/vehicle/:id", to:'vehicles#show', as: :vehicle
  get"/obtener_position/:id",to:'positions#edit', as: :obtener_position
  patch"/position/:id",to:'positions#update', as: :position_update
  get"/position/:id",to:'positions#show', as: :position
 # get"/obtener_work/:id",to:'work_orders#edit', as: :obtener_work
  # patch"/work_order/:id", to:'work_orders#update' , as: :work_update
  # get"/work_order/:id",to:'work_orders#show', as: :work_order

end
