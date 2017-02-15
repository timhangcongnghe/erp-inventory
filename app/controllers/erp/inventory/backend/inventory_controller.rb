require_dependency "erp/backend/backend_controller"

module Erp
  module Inventory
     module Backend
      class InventoryController < Erp::Backend::BackendController
        def delivering
        end
        
        def order_listing
          @orders = Erp::Orders::Order.search(params).paginate(:page => params[:page], :per_page => 3)
          
          render layout: nil
        end
      end
    end
  end
end
