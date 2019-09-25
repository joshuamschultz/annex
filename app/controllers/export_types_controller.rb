class ExportTypesController < ApplicationController
  before_action :set_export_type, only: [:show, :edit, :update, :destroy]

  # GET /export_types
  # GET /export_types.json
  def index
    @export_types = ExportType.all
  end

  # GET /export_types/1
  # GET /export_types/1.json
  def show
  end

  # GET /export_types/new
  def new
    @export_type = ExportType.new
  end

  # GET /export_types/1/edit
  def edit
  end

  # POST /export_types
  # POST /export_types.json
  def create
    @export_type = ExportType.new(export_type_params)

    respond_to do |format|
      if @export_type.save
        format.html { redirect_to @export_type, notice: 'Export type was successfully created.' }
        format.json { render :show, status: :created, location: @export_type }
      else
        format.html { render :new }
        format.json { render json: @export_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /export_types/1
  # PATCH/PUT /export_types/1.json
  def update
    respond_to do |format|
      if @export_type.update(export_type_params)
        format.html { redirect_to @export_type, notice: 'Export type was successfully updated.' }
        format.json { render :show, status: :ok, location: @export_type }
      else
        format.html { render :edit }
        format.json { render json: @export_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /export_types/1
  # DELETE /export_types/1.json
  def destroy
    @export_type.destroy
    respond_to do |format|
      format.html { redirect_to export_types_url, notice: 'Export type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_export_type
      @export_type = ExportType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def export_type_params
      params.require(:export_type).permit(:type_code, :name)
    end
end
