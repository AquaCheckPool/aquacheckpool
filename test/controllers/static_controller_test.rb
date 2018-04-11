require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get parametros" do
    get static_parametros_url
    assert_response :success
  end

  test "should get normativa" do
    get static_normativa_url
    assert_response :success
  end

  test "should get consejos" do
    get static_consejos_url
    assert_response :success
  end

end
