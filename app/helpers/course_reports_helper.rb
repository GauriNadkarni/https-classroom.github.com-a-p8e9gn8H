module CourseReportsHelper
  def course_name(progress_report)
    tag.div do
      tag.h2 do
        progress_report.course_name
      end
    end
  end
end
