require 'test_helper'

class StudentGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_groups_index_url
    assert_response :success
  end

  test "should get show" do
    get student_groups_show_url
    assert_response :success
  end

  test "should get edit" do
    get student_groups_edit_url
    assert_response :success
  end

end
