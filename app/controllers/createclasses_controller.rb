class CreateclassesController < ApplicationController
  before_action :set_createclass, only: %i[ show edit update destroy ]
  before_action :authenticate_teacher!, except: [:index, :show] 
  # before_action :correct_teacher, only: [:edit , :update, :destroy] 

  # GET /createclasses or /createclasses.json
  def index
    @createclasses = Createclass.all.order(created_at: :desc)
    @profiles = Profile.all
    
  end

  # GET /createclasses/1 or /createclasses/1.json
  def show
    @assingments = @createclass.assingments.order(created_at: :desc)
    @contents = @createclass.contents.order(created_at: :desc)
    @students = @createclass.students
    @syllabuses = @createclass.syllabuses.order(created_at: :desc)
    @timetables = @createclass.timetables.order(created_at: :desc)
    @notices = @createclass.notices.order(created_at: :desc)
    @acount = @createclass.assingments.count
    @profiles = Profile.all
  end

  # GET /createclasses/new
  def new
    #@createclass = Createclass.new
    @createclass = current_teacher.createclasses.build
    @profiles = Profile.all
  end

  
   


  # GET /createclasses/1/edit
  def edit
    @profiles = Profile.all
  end

  # POST /createclasses or /createclasses.json
  def create
   # @createclass = Createclass.new(createclass_params)
   @createclass = current_teacher.createclasses.build(createclass_params)
    respond_to do |format|
      if @createclass.save
        session[:createclass_id] =  @createclass.id
        format.html { redirect_to createclass_url(@createclass), notice: "Createclass was successfully created." }
        format.json { render :show, status: :created, location: @createclass }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @createclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /createclasses/1 or /createclasses/1.json
  def update
    respond_to do |format|
      if @createclass.update(createclass_params)
        format.html { redirect_to createclass_url(@createclass), notice: "Createclass was successfully updated." }
        format.json { render :show, status: :ok, location: @createclass }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @createclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /createclasses/1 or /createclasses/1.json
  def destroy
    @createclass.destroy

    respond_to do |format|
      format.html { redirect_to createclasses_url, notice: "Createclass was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  def correct_teacher
    @createclass = correct_teacher.createclasses.find_by(id: params[:id])
    redirect_to createclasses_path, notice: "not authorized" if @createclass.nil?
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_createclass
      @createclass = Createclass.find(params[:id])
    end

    

    # Only allow a list of trusted parameters through.
    def createclass_params
      params.require(:createclass).permit(:classname, :subjectcode, :branchcode, :collegecode, :session,:teacher_id)
    end
end
