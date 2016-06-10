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
            headers: {"Content-Type" => "application/json"}).execute
      end
      response
    end
  end
end