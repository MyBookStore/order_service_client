require 'order_service_client/version'
require 'order_service_client/service_urls'
require 'order_service_client/service'
require 'order_service_client/base_service'

module OrderServiceClient
  class Configuration
    class << self
      attr_accessor :site , :username, :password, :timeout, :caller
    end
  end
end
