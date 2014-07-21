require 'test_helper'

class CatalogControllerTest < ActionController::TestCase
  test "should get item" do
    get :item
    assert_response :success
  end

end
