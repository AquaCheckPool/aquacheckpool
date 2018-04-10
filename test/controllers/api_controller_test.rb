require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get add_pool_values" do
    get api_add_pool_values_url
    assert_response :success
  end

end
