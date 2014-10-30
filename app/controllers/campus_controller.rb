class CampusController < ApplicationController
  before_action :set_campu, only: [:destroy]

  before_action :set_university, only: [:new, :edit, :create, :update]

  # GET /campus
  # GET /campus.json
  def index
    @university = University.find(params[:university_id])
    @campus = @university.campus.all
  end

  # GET /campus/1
  # GET /campus/1.json
  def show
    @campu = Campu.find(params[:id])
  end

  # GET /campus/new
  def new
    @campu = Campu.new
  end

  # GET /campus/1/edit
  def edit
    university = University.find(params[:university_id])
    @campu = university.campus.find(params[:id])
    
  end

  # POST /campus
  # POST /campus.json
  def create
    university = University.find(params[:university_id])
    @campu = university.campus.new(campu_params)

    respond_to do |format|
      if @campu.save
        format.html { redirect_to university_campus_path, notice: 'Campus criado com sucesso.' }
        format.json { render :show, status: :created, location: @campu }
      else
        format.html { render :new }
        format.json { render json: @campu.errors, status: :unprocessable_entity }
      end
    end
  end
 
  # PATCH/PUT /campus/1
  # PATCH/PUT /campus/1.json
  def update
    respond_to do |format|
      university = University.find(params[:university_id])
      @campu = university.campus.find(params[:id])
      if @campu.update(campu_params)
        format.html { redirect_to university_campus_path, notice: 'Campu was successfully updated.' }
        format.json { render :show, status: :ok, location: @campu }
      else
        format.html { render :edit }
        format.json { render json: @campu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campus/1
  # DELETE /campus/1.json
  def destroy
    @campu.destroy
    respond_to do |format|
      format.html { redirect_to university_campus_url, notice: 'Campu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campu
      @campu = Campu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campu_params
      params.require(:campu).permit(:name, :address, :number, :district, :cep, :state, :city, :phoneFixed, :phoneFax, :university_id)
    end


    def set_university
      @universities = University.all.order("name ASC")
    end  
end
