require "test_helper"

class NexusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nexu = nexus(:one)
  end

  test "should get index" do
    get nexus_url
    assert_response :success
  end

  test "should get new" do
    get new_nexu_url
    assert_response :success
  end

  test "should create nexu" do
    assert_difference('Nexu.count') do
      post nexus_url, params: { nexu: { name: @nexu.name } }
    end

    assert_redirected_to nexu_url(Nexu.last)
  end

  test "should show nexu" do
    get nexu_url(@nexu)
    assert_response :success
  end

  test "should get edit" do
    get edit_nexu_url(@nexu)
    assert_response :success
  end

  test "should update nexu" do
    patch nexu_url(@nexu), params: { nexu: { name: @nexu.name } }
    assert_redirected_to nexu_url(@nexu)
  end

  test "should destroy nexu" do
    assert_difference('Nexu.count', -1) do
      delete nexu_url(@nexu)
    end

    assert_redirected_to nexus_url
  end
end
