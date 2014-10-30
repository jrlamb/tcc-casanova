class DisciplinesController < ApplicationController
  before_action :set_discipline, only: [:show, :edit, :update, :destroy]
  
  before_action :set_courses, only: [:new, :create, :update, :edit]

  # GET /disciplines
  # GET /disciplines.json
  def index
    @course = Course.find(params[:course_id])
    @disciplines = @course.disciplines.all
  end

  # GET /disciplines/1
  # GET /disciplines/1.json
  def show
  end

  # GET /disciplines/new
  def new
    @discipline = Discipline.new
  end

  # GET /disciplines/1/edit
  def edit
  end

  # POST /disciplines
  # POST /disciplines.json
  def create
    course = Course.find(params[:course_id])
    @discipline = course.disciplines.new(discipline_params)

    respond_to do |format|
      if @discipline.save
        format.html { redirect_to university_campu_department_course_disciplines_path, notice: 'Discipline was successfully created.' }
        format.json { render :show, status: :created, location: @discipline }
      else
        format.html { render :new }
        format.json { render json: @discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disciplines/1
  # PATCH/PUT /disciplines/1.json
  def update
    course = Course.find(params[:course_id])
    @discipline = course.disciplines.find(params[:id])
    respond_to do |format|
      if @discipline.update(discipline_params)
        format.html { redirect_to university_campu_department_course_disciplines_path, notice: 'Discipline was successfully updated.' }
        format.json { render :show, status: :ok, location: @discipline }
      else
        format.html { render :edit }
        format.json { render json: @discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplines/1
  # DELETE /disciplines/1.json
  def destroy
    @discipline.destroy
    respond_to do |format|
      format.html { redirect_to university_campu_department_course_disciplines_path, notice: 'Discipline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipline
      @discipline = Discipline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discipline_params
      params.require(:discipline).permit(:name, :period, :loadHourly, :course_id, :teacher_id, :matrix, :integer, :preRequisite)
    end

    def set_courses
      @courses = Course.all.order("name ASC")
      @teachers = Teacher.all.order("name ASC")
    end
end
