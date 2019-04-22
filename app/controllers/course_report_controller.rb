class CourseReportController <ApplicationController
  def index
    @course = Course.find(params[:id])
    @faculty=Faculty.find(params[:fid])
    @progress_report = ProgressReport.new(@course, @faculty)
  end
end