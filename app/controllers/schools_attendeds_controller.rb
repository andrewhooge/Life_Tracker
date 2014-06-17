class SchoolsAttendedsController < ApplicationController
  before_action :set_schools_attended, only: [:show, :edit, :update, :destroy]

  # GET /schools_attendeds
  # GET /schools_attendeds.json
  def index
    @schools_attendeds = SchoolsAttended.all
  end

  # GET /schools_attendeds/1
  # GET /schools_attendeds/1.json
  def show
  end

  # GET /schools_attendeds/new
  def new
    @schools_attended = SchoolsAttended.new
  end

  # GET /schools_attendeds/1/edit
  def edit
  end

  # POST /schools_attendeds
  # POST /schools_attendeds.json
  def create
    @schools_attended = SchoolsAttended.new(schools_attended_params)

    respond_to do |format|
      if @schools_attended.save
        format.html { redirect_to @schools_attended, notice: 'Schools attended was successfully created.' }
        format.json { render :show, status: :created, location: @schools_attended }
      else
        format.html { render :new }
        format.json { render json: @schools_attended.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schools_attendeds/1
  # PATCH/PUT /schools_attendeds/1.json
  def update
    respond_to do |format|
      if @schools_attended.update(schools_attended_params)
        format.html { redirect_to @schools_attended, notice: 'Schools attended was successfully updated.' }
        format.json { render :show, status: :ok, location: @schools_attended }
      else
        format.html { render :edit }
        format.json { render json: @schools_attended.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schools_attendeds/1
  # DELETE /schools_attendeds/1.json
  def destroy
    @schools_attended.destroy
    respond_to do |format|
      format.html { redirect_to schools_attendeds_url, notice: 'Schools attended was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schools_attended
      @schools_attended = SchoolsAttended.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schools_attended_params
      params.require(:schools_attended).permit(:school, :beginning_year, :ending_year)
    end
end
