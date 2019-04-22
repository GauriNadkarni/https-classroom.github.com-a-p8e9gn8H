json.extract! course_evaluation, :id, :poor, :acceptable, :exceeds, :faculty_id, :course_id, :criterion_id, :created_at, :updated_at
json.url course_evaluation_url(course_evaluation, format: :json)
