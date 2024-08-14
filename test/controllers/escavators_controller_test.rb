require "test_helper"

class EscavatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get escavators_show_url
    assert_response :success
  end
end
