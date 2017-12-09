require 'test_helper'

class ShowUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_user_index_url
    assert_response :success
  end

end
