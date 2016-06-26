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
      response = execute(:post, create_order_url, params, @user)
      Resources::Order.new response.body['user']
    end

    def fetch_orders_for_customer customer
      response = execute(:get, orders_url, {customer_id: customer.id}, @user)
      Resources::Order.new response.body['user']
    end
  end
end
