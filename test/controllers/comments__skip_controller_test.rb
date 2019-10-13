require 'test_helper'

class CommentsSkipControllerTest < ActionDispatch::IntegrationTest
  test "should get template-engine" do
    get comments__skip_template-engine_url
    assert_response :success
  end

end
