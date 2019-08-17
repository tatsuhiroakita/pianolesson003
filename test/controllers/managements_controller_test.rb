require 'test_helper'

class ManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get managements_index_url
    assert_response :success
  end

end
