require "application_system_test_case"

class CourseCriterionsTest < ApplicationSystemTestCase
  setup do
    @course_criterion = course_criterions(:one)
  end

  test "visiting the index" do
    visit course_criterions_url
    assert_selector "h1", text: "Course Criterions"
  end

  test "creating a Course criterion" do
    visit course_criterions_url
    click_on "New Course Criterion"

    fill_in "Course", with: @course_criterion.course_id
    fill_in "Criterion", with: @course_criterion.criterion_id
    fill_in "Score", with: @course_criterion.score
    click_on "Create Course criterion"

    assert_text "Course criterion was successfully created"
    click_on "Back"
  end

  test "updating a Course criterion" do
    visit course_criterions_url
    click_on "Edit", match: :first

    fill_in "Course", with: @course_criterion.course_id
    fill_in "Criterion", with: @course_criterion.criterion_id
    fill_in "Score", with: @course_criterion.score
    click_on "Update Course criterion"

    assert_text "Course criterion was successfully updated"
    click_on "Back"
  end

  test "destroying a Course criterion" do
    visit course_criterions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course criterion was successfully destroyed"
  end
end
