module Erp
  module Inventory
     module Backend
      class InventoryController < Erp::Backend::BackendController
        def delivering
        end
        
        def order_listing
          @orders = Erp::Orders::Order.search(params).paginate(:page => params[:page], :per_page => 20)
          
          render layout: nil
        end
        
        def order_delivery_details
          @order = Erp::Orders::Order.find(params[:id])
          
          render layout: nil
        end
      end
    end
  end
end
