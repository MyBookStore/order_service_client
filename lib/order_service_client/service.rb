require 'order_service_client/base_service'
require 'order_service_client/service_urls'
require 'order_service_client/resources/order'

module OrderServiceClient
  class Service
    include BaseService
    include ServiceUrls

    def initialize user
      @user = user
    end

    def create params
      @order = JSON.parse(execute(:post, create_order_url, params, @user))
      Resources::Order.new @order
    end

    def fetch_orders_for_customer customer
      @order  = JSON.parse(execute(:get, orders_url, {customer_id: customer.id}, @user).to_json)
      Resources::Order.new @order
    end
  end
end
