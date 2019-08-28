Rails.application.routes.draw do
  get 'visits/show', to: 'visits#show'
  get 'visits/:page', to: 'visits#visitors'
end
