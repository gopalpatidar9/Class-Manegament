class StudentprofilesController < ApplicationController
  before_action :set_studentprofile, only: %i[ show edit update destroy ]
  before_action :authenticate_student!, except: [:index, :show] 
  # before_action :correct_student, only: [:edit , :update, :destroy] 

  # GET /studentprofiles or /studentprofiles.json
  def index
    @studentprofiles = Studentprofile.all
  end

  # GET /studentprofiles/1 or /studentprofiles/1.json
  def show
    @studentprofiles = Studentprofile.all
  end

  # GET /studentprofiles/new
  def new
    @studentprofiles = Studentprofile.all
    @studentprofile = Studentprofile.new
  end

  # GET /studentprofiles/1/edit
  def edit
    @studentprofiles = Studentprofile.all
  end

  # POST /studentprofiles or /studentprofiles.json
  def create
    @student = current_student
    @studentprofile = Studentprofile.new(studentprofile_params)
    @student.studentprofile = @studentprofile
    respond_to do |format|
      if @studentprofile.save
        format.html { redirect_to studentprofile_url(@studentprofile), notice: "Studentprofile was successfully created." }
        format.json { render :show, status: :created, location: @studentprofile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studentprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentprofiles/1 or /studentprofiles/1.json
  def update
    respond_to do |format|
      if @studentprofile.update(studentprofile_params)
        format.html { redirect_to studentprofile_url(@studentprofile), notice: "Studentprofile was successfully updated." }
        format.json { render :show, status: :ok, location: @studentprofile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studentprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentprofiles/1 or /studentprofiles/1.json
  def destroy
    @studentprofile.destroy

    respond_to do |format|
      format.html { redirect_to joins_url, notice: "Studentprofile was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  def correct_teacher
    @studentprofile = correct_student.studentprofile.find_by(id: params[:id])
    redirect_to studentprofiles_path, notice: "not authorized" if @studentprofile.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentprofile
      @studentprofile = Studentprofile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studentprofile_params
      params.require(:studentprofile).permit(:image , :student_id)
    end
end
