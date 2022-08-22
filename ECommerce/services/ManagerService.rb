module Inventory
    class ManagerService
     
      def initialize        
          @database_service = Inventory::DatabaseService.new
          @dealer_service = Inventory::DealerService.new
          start_services
      end

      def start_services
			  @dealer_service.start
        @database_service.start(@dealer_service)
      end

  end
end

