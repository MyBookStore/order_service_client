module OrderServiceClient
  module ServiceUrls

    def root_url
      @root_url ||= OrderServiceClient::Configuration.site
    end

    def orders_url
      "#{root_url}/orders"
    end

    def create_order_url
      "#{orders_url}/new"
    end

  end
end
