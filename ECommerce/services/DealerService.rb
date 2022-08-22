module Inventory
    class DealerService    
      def start(manager_service, db_service)
        puts "DealerService::start_service - starting"
				@manager_service = manager_service
				@database_service = db_service
      end

      def order_booked
				@database_service.update_item_quantity
				initiate_shipping				
			end
			
			def create_new_item
			  @database_service.add_new_item
			end
			
			def check_payment_status
			end
			
			def initiate_shipping
			  check_payment_status
				ship_item
			end
			
			def ship_item
			  update_shipping_status
			end
  end
end