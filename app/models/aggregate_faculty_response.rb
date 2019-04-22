class Aggregate_Faculty_Response
  delegate :name, prefix: 'course', to: :@course
  delegate :full_name, prefix: 'faculty', to: :@faculty

  attr_accessor :faculty

  CriterionResult = Struct.new(:threshold_name, :value, :threshold) do
    def passing?
      value>=threshold
    end
  end


  def initialize(course, faculty)
    @faculty = faculty
    @course = course
    @evaluations = @faculty.course_evaluations.where(course: @course)
  end

  def course_results
    evals = {}
    @evaluations.each do |ev|
      cr = CourseCriterion.find_by(course: @course, criterion: ev.criterion)
      acceptable = CriterionResult.new(:acceptable, ev.acceptable, cr.acceptable_threshold)
      exceeds= CriterionResult.new(:exceeds, ev.exceeds, cr.exceeds_threshold)
      evals[ev.criterion.name]={acceptable: acceptable, exceeds: exceeds}

    end
    evals
  end
end