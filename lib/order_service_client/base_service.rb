require 'rest_client'
#
module OrderServiceClient
  module BaseService

    def execute url
      RestClient.get url
    end

  end
end