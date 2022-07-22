class AssingmentsController < ApplicationController
  before_action :set_assingment, only: %i[ show edit update destroy ]

  # GET /assingments or /assingments.json
  def index
    @assingments = Assingment.order(created_at: :desc)
    @profiles = Profile.all
    
  end

  # GET /assingments/1 or /assingments/1.json
  def show
    @studentassingments = @assingment.studentassingments.order(created_at: :desc)
    @profiles = Profile.all

    
  end

  # GET /assingments/new
  def new
    @assingment = Assingment.new
    @profiles = Profile.all
  end

  # GET /assingments/1/edit
  def edit
    @profiles = Profile.all
  end

  # POST /assingments or /assingments.json
  def create
    @assingment = Assingment.new(assingment_params)

    respond_to do |format|
      if @assingment.save
        format.html { redirect_to assingment_url(@assingment), notice: "Assingment was successfully created." }
        format.json { render :show, status: :created, location: @assingment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assingment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assingments/1 or /assingments/1.json
  def update
    respond_to do |format|
      if @assingment.update(assingment_params)
        format.html { redirect_to assingment_url(@assingment), notice: "Assingment was successfully updated." }
        format.json { render :show, status: :ok, location: @assingment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assingment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assingments/1 or /assingments/1.json
  def destroy
    @assingment.destroy

    respond_to do |format|
      format.html { redirect_to assingments_url, notice: "Assingment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assingment
      @assingment = Assingment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assingment_params
      params.require(:assingment).permit(:title, :points, :duedate, :topic, :createclass_id , :instruction , :file )
    end
end
