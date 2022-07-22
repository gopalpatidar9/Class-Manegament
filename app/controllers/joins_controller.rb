class JoinsController < ApplicationController

  
  

  def index
     @classes = current_student.createclasses.order(created_at: :desc)
     @studentprofiles = Studentprofile.all
  end

  
  def new
    @createclass = Createclass.new
    @studentprofiles = Studentprofile.all
  end

  def edit
    
  end
  
  def show
    @classes = current_student.createclasses.find(params[:id])
    
    #@assingments = Assingment.all
    @studentprofiles = Studentprofile.all
    @studentsall = @classes.students
    @teachers = @classes.teacher
  
    
  end

  
  def create

    @student = current_student
    @joinclass = Createclass.find_by(collegecode: params[:createclass][:collegecode] , branchcode: params[:createclass][:branchcode] ,subjectcode: params[:createclass][:subjectcode] , session: params[:createclass][:session])
    @student.createclasses << @joinclass

    if @student.save

      redirect_to "/joins"
      
    end
    
    
    # @joinclass = Createclass.find_by( collegecode: params[:collegecode], branchcode: params[:branchcode], subjectcode: params[:subjectcode] , session: params[:session])
    # if @joinclass.present? && @joinclass.authenticate( params[:collegecode], params[:branchcode],params[:subjectcode],params[:session])
    #   @joinclass = Join.create(students_id: params[:students_id],  createclasses_id: params[:createclasses_id])
    #   redirect_to 'join/index'

    # else
    #   render 'new'
    #   flash[:alert] = "invalid code"
    # end
  end

  def destroy
    @student.destroy

    respond_to do |format|
      format.html { redirect_to joins_url, notice: "Class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # def destroy
  #   @object = Object.find(params[:id])
  #   if @object.destroy
  #     flash[:success] = 'Object was successfully deleted.'
  #     redirect_to objects_url
  #   else
  #     flash[:error] = 'Something went wrong'
  #     redirect_to objects_url
  #   end
  # end
  

  
end
