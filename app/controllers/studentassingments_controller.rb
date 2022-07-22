class StudentassingmentsController < ApplicationController
  before_action :set_assingment
  before_action :set_studentassingment, only: %i[ show edit update destroy ]
  # GET /studentassingments or /studentassingments.json
  def index
    @studentassingments = @assingment.studentassingments
    @studentprofiles = Studentprofile.all
    
  end

  # GET /studentassingments/1 or /studentassingments/1.json
  def show
    @studentassingments = @assingment.studentassingments.find(params[:assingment_id])
  end

  # GET /studentassingments/new
  def new
    @studentassingment = @assingment.studentassingments.build
    @studentprofiles = Studentprofile.all
    @teachers = @assingment.createclass.teacher
  end

  # GET /studentassingments/1/edit
  def edit
    @studentprofiles = Studentprofile.all
  end

  # POST /studentassingments or /studentassingments.json
  def create
    @studentassingment = @assingment.studentassingments.build(studentassingment_params)

    respond_to do |format|
      if @studentassingment.save
        format.html { redirect_to joins_url , notice: "Studentassingment was successfully created." }
        format.json { render :show, status: :created, location: @studentassingment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studentassingment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentassingments/1 or /studentassingments/1.json
  def update
    respond_to do |format|
      if @studentassingment.update(studentassingment_params)
        format.html { redirect_to studentassingment_url(@studentassingment), notice: "Studentassingment was successfully updated." }
        format.json { render :show, status: :ok, location: @studentassingment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studentassingment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentassingments/1 or /studentassingments/1.json
  def destroy
    @studentassingment.destroy

    respond_to do |format|
      format.html { redirect_to studentassingments_url, notice: "Studentassingment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentassingment
      @studentassingment = @assingment.studentassingments.find(params[:id] , params[:name])
    end

    def set_assingment
      @assingment = Assingment.find(params[:assingment_id])
    end

    # Only allow a list of trusted parameters through.
    def studentassingment_params
      params.require(:studentassingment).permit(:file, :assingment_id, :student_id , :student_name)
    end
end
