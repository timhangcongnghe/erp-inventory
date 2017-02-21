Erp::Inventory::Engine.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
		namespace :backend, module: "backend", path: "backend/inventory" do
			post "order_listing" => "inventory#order_listing", as: :order_listing
			get "delivering" => "inventory#delivering", as: :delivering
			get "order_delivery_details" => "inventory#order_delivery_details", as: :order_delivery_details
		end
	end
end