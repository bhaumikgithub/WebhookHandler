require 'test_helper'

class WebhookHandlerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get webhook_handler_index_url
    assert_response :success
  end

end
