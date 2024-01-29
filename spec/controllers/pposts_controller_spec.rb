require "test_helper"

class PpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ppost = pposts(:one)
  end

  test "should get index" do
    get pposts_url
    assert_response :success
  end

  test "should get new" do
    get new_ppost_url
    assert_response :success
  end

  test "should create ppost" do
    assert_difference("Ppost.count") do
      post pposts_url, params: { ppost: { body: @ppost.body, name: @ppost.name, title: @ppost.title } }
    end

    assert_redirected_to ppost_url(Ppost.last)
  end

  test "should show ppost" do
    get ppost_url(@ppost)
    assert_response :success
  end

  test "should get edit" do
    get edit_ppost_url(@ppost)
    assert_response :success
  end

  test "should update ppost" do
    patch ppost_url(@ppost), params: { ppost: { body: @ppost.body, name: @ppost.name, title: @ppost.title } }
    assert_redirected_to ppost_url(@ppost)
  end

  test "should destroy ppost" do
    assert_difference("Ppost.count", -1) do
      delete ppost_url(@ppost)
    end

    assert_redirected_to pposts_url
  end
end
