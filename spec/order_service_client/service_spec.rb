module OrderServiceClient
  describe :Service do
    include BaseService
    include ServiceUrls
    order_service = OrderServiceClient::Service.new("test")
    before(:each) do
      OrderServiceClient::Configuration.site = 'http://localhost:4003'
      OrderServiceClient::Configuration.username = 'foo'
      OrderServiceClient::Configuration.password = 'bar'
      OrderServiceClient::Configuration.timeout = 150
    end

    describe '#fetch_order_for_customer' do
      xit 'should return the orders for given customer' do
        order = order_service.fetch_orders_for_customer({customer_id: 1})
        expect(order.customer_id).to eql(1)
      end
    end

    describe '#create' do
      xit "should create a new order" do
        order_params = {customer_id: 1, book_id: 1,status: "Confirmed"}
        order = order_service.create(order_params)
        expect(order).to be_instance_of(OrderServiceClient::Resources::Order)
      end
    end
  end
end
