class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[ show edit update destroy ]

  # GET /quizzes or /quizzes.json
  def index
    @quizzes = Quiz.all
    @profiles = Profile.all
  end

  # GET /quizzes/1 or /quizzes/1.json
  def show
    @profiles = Profile.all
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
    @profiles = Profile.all
  end

  def teacher_show
    @participants = @quiz.participants
    
    render 'teacher_show'
  end 

  def student_show
    @participant = @quiz.participant(current_user)
    @user = current_user
    @question = @quiz.next_question(current_user)
    if @question
      render 'student_show'
    else
      render 'student_result'
    end
  end

  # GET /quizzes/1/edit
  def edit
    @profiles = Profile.all
  end

  # POST /quizzes or /quizzes.json
  def create
    @profiles = Profile.all
    @quiz = Quiz.new(quiz_params)

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to quiz_url(@quiz), notice: "Quiz was successfully created." }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1 or /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to quiz_url(@quiz), notice: "Quiz was successfully updated." }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1 or /quizzes/1.json
  def destroy
    @quiz.destroy

    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: "Quiz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quiz_params
      params.require(:quiz).permit(:title, :descripation, :createclass_id)
    end
end
