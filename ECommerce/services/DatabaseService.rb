module Inventory
    class DatabaseService 
      
      def initialize
        puts "DatabaseService::initialize"
      end
			
			def start(manager_service)
			  @database_connection = DatabaseConnection.new
				@manager_service = manager_service
			end
			
			def account_creation()
			  @database_connection.create_user()
			end
			
			def update_password()
			  @database_connection.reset_password
			end
			
			def add_new_address()
			  @database_connection.add_new_address
			end
			
			def update_address()
			  @database_connection.update_address
			end
			
			def add_new_item()
			  @database_connection.add_new_items
			end
			
			def update_item_quantity()
			  @database_connection.update_count_of_items
			end
			
			def remove_an_item()
			  @database_connection.remove_an_item
			end
			
			def on_item_booking()
			  @database_connection.save_order_details
				@manager_service.notify_seller
			end
			
			def update_order_status
			  @database_connection.update_order_status
			end
    end
end