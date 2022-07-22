class SyllabusesController < ApplicationController
  before_action :set_syllabus, only: %i[ show edit update destroy ]

  # GET /syllabuses or /syllabuses.json
  def index
    @syllabuses = Syllabus.all
    @profiles = Profile.all
    @studentprofiles = Studentprofile.all
  end

  # GET /syllabuses/1 or /syllabuses/1.json
  def show
    @profiles = Profile.all
  end

  # GET /syllabuses/new
  def new
    @syllabus = Syllabus.new
    @profiles = Profile.all
  end

  # GET /syllabuses/1/edit
  def edit
    @profiles = Profile.all
  end

  # POST /syllabuses or /syllabuses.json
  def create
    @profiles = Profile.all
    @syllabus = Syllabus.new(syllabus_params)

    respond_to do |format|
      if @syllabus.save
        format.html { redirect_to syllabus_url(@syllabus), notice: "Syllabus was successfully created." }
        format.json { render :show, status: :created, location: @syllabus }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syllabus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syllabuses/1 or /syllabuses/1.json
  def update
    respond_to do |format|
      if @syllabus.update(syllabus_params)
        format.html { redirect_to syllabus_url(@syllabus), notice: "Syllabus was successfully updated." }
        format.json { render :show, status: :ok, location: @syllabus }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syllabus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syllabuses/1 or /syllabuses/1.json
  def destroy
    @syllabus.destroy

    respond_to do |format|
      format.html { redirect_to syllabuses_url, notice: "Syllabus was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syllabus
      @syllabus = Syllabus.find(params[:id])
    end
    
    def set_createclass
      @createclass = Createclass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syllabus_params
      params.require(:syllabus).permit(:file ,:createclass_id)
    end
end
