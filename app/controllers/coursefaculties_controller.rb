class CoursefacultiesController < ApplicationController
  before_action :set_coursefaculty, only: [:show, :edit, :update, :destroy]

  # GET /coursefaculties
  # GET /coursefaculties.json
  def index
    @coursefaculties = Coursefaculty.all
  end

  # GET /coursefaculties/1
  # GET /coursefaculties/1.json
  def show
  end

  # GET /coursefaculties/new
  def new
    @coursefaculty = Coursefaculty.new
  end

  # GET /coursefaculties/1/edit
  def edit
  end

  # POST /coursefaculties
  # POST /coursefaculties.json
  def create
    @coursefaculty = Coursefaculty.new(coursefaculty_params)

    respond_to do |format|
      if @coursefaculty.save
        format.html { redirect_to @coursefaculty, notice: 'Coursefaculty was successfully created.' }
        format.json { render :show, status: :created, location: @coursefaculty }
      else
        format.html { render :new }
        format.json { render json: @coursefaculty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coursefaculties/1
  # PATCH/PUT /coursefaculties/1.json
  def update
    respond_to do |format|
      if @coursefaculty.update(coursefaculty_params)
        format.html { redirect_to @coursefaculty, notice: 'Coursefaculty was successfully updated.' }
        format.json { render :show, status: :ok, location: @coursefaculty }
      else
        format.html { render :edit }
        format.json { render json: @coursefaculty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursefaculties/1
  # DELETE /coursefaculties/1.json
  def destroy
    @coursefaculty.destroy
    respond_to do |format|
      format.html { redirect_to coursefaculties_url, notice: 'Coursefaculty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coursefaculty
      @coursefaculty = Coursefaculty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coursefaculty_params
      params.require(:coursefaculty).permit(:course_id, :faculty_id)
    end
end
