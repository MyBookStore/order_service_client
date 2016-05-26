module OrderServiceClient
  module ServiceUrls

    def root_url
      @root_url ||= OrderServiceClient::Configuration.site
    end
  end
end
