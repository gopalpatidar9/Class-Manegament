class NoticesController < ApplicationController
  before_action :set_notice, only: %i[ show edit update destroy ]
  
  # GET /notices or /notices.json
  def index
    @notices = Notice.all
    @profiles = Profile.all
  end

  # GET /notices/1 or /notices/1.json
  def show
    @profiles = Profile.all
  end

  # GET /notices/new
  def new
    @notice = Notice.new
    @profiles = Profile.all
  end

  # GET /notices/1/edit
  def edit
    @profiles = Profile.all
  end

  # POST /notices or /notices.json
  def create
    @profiles = Profile.all
    @notice = Notice.new(notice_params)

    respond_to do |format|
      if @notice.save
        format.html { redirect_to createclasses_url(@notice), notice: "Notice was successfully created." }
        format.json { render :show, status: :created, location: @notice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  

  # PATCH/PUT /notices/1 or /notices/1.json
  def update
    respond_to do |format|
      if @notice.update(notice_params)
        format.html { redirect_to notice_url(@notice), notice: "Notice was successfully updated." }
        format.json { render :show, status: :ok, location: @notice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1 or /notices/1.json
  def destroy
    @notice.destroy

    respond_to do |format|
      format.html { redirect_to notices_url, notice: "Notice was successfully destroyed." }
      format.json { head :no_content }
    end
  end
 
  def unread
    #logic to add a friend
    notice = Notice.find(params[:id])
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notice_params
      params.require(:notice).permit(:massege, :file , :createclass_id , :read)
    end
end
