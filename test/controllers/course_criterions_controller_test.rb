require 'test_helper'

class CourseCriterionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_criterion = course_criterions(:one)
  end

  test "should get index" do
    get course_criterions_url
    assert_response :success
  end

  test "should get new" do
    get new_course_criterion_url
    assert_response :success
  end

  test "should create course_criterion" do
    assert_difference('CourseCriterion.count') do
      post course_criterions_url, params: { course_criterion: { course_id: @course_criterion.course_id, criterion_id: @course_criterion.criterion_id, score: @course_criterion.score } }
    end

    assert_redirected_to course_criterion_url(CourseCriterion.last)
  end

  test "should show course_criterion" do
    get course_criterion_url(@course_criterion)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_criterion_url(@course_criterion)
    assert_response :success
  end

  test "should update course_criterion" do
    patch course_criterion_url(@course_criterion), params: { course_criterion: { course_id: @course_criterion.course_id, criterion_id: @course_criterion.criterion_id, score: @course_criterion.score } }
    assert_redirected_to course_criterion_url(@course_criterion)
  end

  test "should destroy course_criterion" do
    assert_difference('CourseCriterion.count', -1) do
      delete course_criterion_url(@course_criterion)
    end

    assert_redirected_to course_criterions_url
  end
end
