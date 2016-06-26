require 'rest_client'
module OrderServiceClient
  module BaseService
    def execute(method, url, params, user_id)
      params = JSON.dump(params.merge(:user_id => user_id))
      begin
        response = RestClient::Request.new(
            method: method,
            url: url,
            user: user_id,
            payload: params,
            headers: {:content_type => :json,
                      :accept => 'application/json'}).execute
      end
      code = response.code
      body = response.body

      response_with(body, code)
    end

    def response_with(body, code)
      payload = body.empty? ? {} : ActiveSupport::JSON.decode(body)
      OrderServiceClient::Response.new(code, payload)
    end
  end
end