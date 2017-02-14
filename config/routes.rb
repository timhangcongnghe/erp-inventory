Erp::Inventory::Engine.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
		namespace :backend, module: "backend", path: "backend/inventory" do
			post "inventory/order_listing" => "inventory#order_listing", as: :order_listing
			get "inventory/delivering" => "inventory#delivering", as: :delivering
		end
	end
end