class CourseCriterionsController < ApplicationController
  before_action :set_course_criterion, only: [:show, :edit, :update, :destroy]

  def exceeds_threshold
    course_criterion = CourseCriterion.find(params[:id])
    #render json: course_criterion
  end

  def acceptable_threshold
    course_criterion = CourseCriterion.find(params[:id])
   # render json: course_criterion
  end

  def below_threshold
    course_criterion = CourseCriterion.find(params[:id])
    render json: course_criterion
  end

  # GET /course_criterions
  # GET /course_criterions.json
  def index
    @course_criterions = CourseCriterion.all
  end

  # GET /course_criterions/1
  # GET /course_criterions/1.json
  def show
  end

  # GET /course_criterions/new
  def new
    @course_criterion = CourseCriterion.new
  end

  # GET /course_criterions/1/edit
  def edit
  end

  # POST /course_criterions
  # POST /course_criterions.json
  def create
    @course_criterion = CourseCriterion.new(course_criterion_params)

    respond_to do |format|
      if @course_criterion.save
        format.html { redirect_to @course_criterion, notice: 'Course criterion was successfully created.' }
        format.json { render :show, status: :created, location: @course_criterion }
      else
        format.html { render :new }
        format.json { render json: @course_criterion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_criterions/1
  # PATCH/PUT /course_criterions/1.json
  def update
    respond_to do |format|
      if @course_criterion.update(course_criterion_params)
        format.html { redirect_to @course_criterion, notice: 'Course criterion was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_criterion }
      else
        format.html { render :edit }
        format.json { render json: @course_criterion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_criterions/1
  # DELETE /course_criterions/1.json
  def destroy
    @course_criterion.destroy
    respond_to do |format|
      format.html { redirect_to course_criterions_url, notice: 'Course criterion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_criterion
      @course_criterion = CourseCriterion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_criterion_params
      params.require(:course_criterion).permit(:course_id, :criterion_id, :exceeds_threshold, :acceptable_threshold, :below_threshold)
    end
end
