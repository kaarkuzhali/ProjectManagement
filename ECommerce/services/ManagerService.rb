module Inventory
    class ManagerService
     
      def initialize        
          @database_service = Inventory::DatabaseService.new
          @dealer_service = Inventory::DealerService.new
          @customer_service = Inventory::CustomerService.new
          start_services
      end

      def start_services
        @database_service.start(self)
				@dealer_service.start(self, @database_service)
        @customer_service.start(self, @database_service)
      end
			
			def notify_seller
			  @dealer_service.order_booked
			end
  end
end

