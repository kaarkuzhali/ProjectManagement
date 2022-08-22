module Inventory
    class CustomerService    
      def start(manager_service, db_service)
        puts "CustomerService::start_service - starting"
				@manager_service = manager_service
				@database_service = db_service
      end

      def order_booked
			end
			
			def create_new_user
			  @database_service.account_creation
			end
			
			def update_password
			  @database_service.update_password
			end
			
			def create_new_address
			  @database_service.add_new_address
			end
			
			def update_address
			  @database_service.update_address
			end
			
			def book_an_item
				update_payment
				@database_service.on_item_booking
			end
			
			def update_payment
			  # Pay for the item
			end
  end
end