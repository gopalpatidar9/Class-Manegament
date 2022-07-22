class ContentsController < ApplicationController
  before_action :set_content, only: %i[ show edit update destroy ]

  # GET /contents or /contents.json
  def index
    @contents = Content.all
    @profiles = Profile.all
  end

  # GET /contents/1 or /contents/1.json
  def show
    @profiles = Profile.all
    @studentprofiles = Studentprofile.all
    @createclass = Createclass.find(params[:id])
    @teachers = @createclass.teacher
  end

  # GET /contents/new
  def new
    @content = Content.new
    @profiles = Profile.all
  end

  # GET /contents/1/edit
  def edit
    @profiles = Profile.all
  end

  # POST /contents or /contents.json
  def create
    @content = Content.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to content_url(@content), notice: "Content was successfully created." }
        format.json { render :show, status: :created, location: @content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contents/1 or /contents/1.json
  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to content_url(@content), notice: "Content was successfully updated." }
        format.json { render :show, status: :ok, location: @content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contents/1 or /contents/1.json
  def destroy
    @content.destroy

    respond_to do |format|
      format.html { redirect_to contents_url, notice: "Content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

   

    # Only allow a list of trusted parameters through.
    def content_params
      params.require(:content).permit(:title, :description, :link, :file, :createclass_id)
    end
end
