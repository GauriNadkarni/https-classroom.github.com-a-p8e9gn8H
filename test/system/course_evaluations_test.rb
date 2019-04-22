require "application_system_test_case"

class CourseEvaluationsTest < ApplicationSystemTestCase
  setup do
    @course_evaluation = course_evaluations(:one)
  end

  test "visiting the index" do
    visit course_evaluations_url
    assert_selector "h1", text: "Course Evaluations"
  end

  test "creating a Course evaluation" do
    visit course_evaluations_url
    click_on "New Course Evaluation"

    fill_in "Acceptable", with: @course_evaluation.acceptable
    fill_in "Course", with: @course_evaluation.course_id
    fill_in "Criterion", with: @course_evaluation.criterion_id
    fill_in "Exceeds", with: @course_evaluation.exceeds
    fill_in "Faculty", with: @course_evaluation.faculty_id
    fill_in "Poor", with: @course_evaluation.poor
    click_on "Create Course evaluation"

    assert_text "Course evaluation was successfully created"
    click_on "Back"
  end

  test "updating a Course evaluation" do
    visit course_evaluations_url
    click_on "Edit", match: :first

    fill_in "Acceptable", with: @course_evaluation.acceptable
    fill_in "Course", with: @course_evaluation.course_id
    fill_in "Criterion", with: @course_evaluation.criterion_id
    fill_in "Exceeds", with: @course_evaluation.exceeds
    fill_in "Faculty", with: @course_evaluation.faculty_id
    fill_in "Poor", with: @course_evaluation.poor
    click_on "Update Course evaluation"

    assert_text "Course evaluation was successfully updated"
    click_on "Back"
  end

  test "destroying a Course evaluation" do
    visit course_evaluations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course evaluation was successfully destroyed"
  end
end
