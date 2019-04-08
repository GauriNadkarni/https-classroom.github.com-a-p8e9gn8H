require "application_system_test_case"

class CoursefacultiesTest < ApplicationSystemTestCase
  setup do
    @coursefaculty = coursefaculties(:one)
  end

  test "visiting the index" do
    visit coursefaculties_url
    assert_selector "h1", text: "Coursefaculties"
  end

  test "creating a Coursefaculty" do
    visit coursefaculties_url
    click_on "New Coursefaculty"

    fill_in "Course", with: @coursefaculty.course_id
    fill_in "Faculty", with: @coursefaculty.faculty_id
    click_on "Create Coursefaculty"

    assert_text "Coursefaculty was successfully created"
    click_on "Back"
  end

  test "updating a Coursefaculty" do
    visit coursefaculties_url
    click_on "Edit", match: :first

    fill_in "Course", with: @coursefaculty.course_id
    fill_in "Faculty", with: @coursefaculty.faculty_id
    click_on "Update Coursefaculty"

    assert_text "Coursefaculty was successfully updated"
    click_on "Back"
  end

  test "destroying a Coursefaculty" do
    visit coursefaculties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coursefaculty was successfully destroyed"
  end
end
