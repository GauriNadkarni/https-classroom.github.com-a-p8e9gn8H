require 'test_helper'

class CourseEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_evaluation = course_evaluations(:one)
  end

  test "should get index" do
    get course_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_course_evaluation_url
    assert_response :success
  end

  test "should create course_evaluation" do
    assert_difference('CourseEvaluation.count') do
      post course_evaluations_url, params: { course_evaluation: { acceptable: @course_evaluation.acceptable, course_id: @course_evaluation.course_id, criterion_id: @course_evaluation.criterion_id, exceeds: @course_evaluation.exceeds, faculty_id: @course_evaluation.faculty_id, poor: @course_evaluation.poor } }
    end

    assert_redirected_to course_evaluation_url(CourseEvaluation.last)
  end

  test "should show course_evaluation" do
    get course_evaluation_url(@course_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_evaluation_url(@course_evaluation)
    assert_response :success
  end

  test "should update course_evaluation" do
    patch course_evaluation_url(@course_evaluation), params: { course_evaluation: { acceptable: @course_evaluation.acceptable, course_id: @course_evaluation.course_id, criterion_id: @course_evaluation.criterion_id, exceeds: @course_evaluation.exceeds, faculty_id: @course_evaluation.faculty_id, poor: @course_evaluation.poor } }
    assert_redirected_to course_evaluation_url(@course_evaluation)
  end

  test "should destroy course_evaluation" do
    assert_difference('CourseEvaluation.count', -1) do
      delete course_evaluation_url(@course_evaluation)
    end

    assert_redirected_to course_evaluations_url
  end
end
