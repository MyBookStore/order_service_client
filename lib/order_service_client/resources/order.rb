module OrderServiceClient
  module Resources
    class Order
      def initialize order_data
        @order = order_data
      end

      def customer_id
        @order['customer_id']
      end

      def book_id
        @order['book_id']
      end

      def status
        @order['status']
      end
    end
  end
end