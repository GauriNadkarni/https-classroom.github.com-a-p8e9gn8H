require 'test_helper'

class CoursefacultiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coursefaculty = coursefaculties(:one)
  end

  test "should get index" do
    get coursefaculties_url
    assert_response :success
  end

  test "should get new" do
    get new_coursefaculty_url
    assert_response :success
  end

  test "should create coursefaculty" do
    assert_difference('Coursefaculty.count') do
      post coursefaculties_url, params: { coursefaculty: { course_id: @coursefaculty.course_id, faculty_id: @coursefaculty.faculty_id } }
    end

    assert_redirected_to coursefaculty_url(Coursefaculty.last)
  end

  test "should show coursefaculty" do
    get coursefaculty_url(@coursefaculty)
    assert_response :success
  end

  test "should get edit" do
    get edit_coursefaculty_url(@coursefaculty)
    assert_response :success
  end

  test "should update coursefaculty" do
    patch coursefaculty_url(@coursefaculty), params: { coursefaculty: { course_id: @coursefaculty.course_id, faculty_id: @coursefaculty.faculty_id } }
    assert_redirected_to coursefaculty_url(@coursefaculty)
  end

  test "should destroy coursefaculty" do
    assert_difference('Coursefaculty.count', -1) do
      delete coursefaculty_url(@coursefaculty)
    end

    assert_redirected_to coursefaculties_url
  end
end
