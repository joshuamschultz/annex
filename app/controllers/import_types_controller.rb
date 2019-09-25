class ImportTypesController < ApplicationController
  before_action :set_import_type, only: [:show, :edit, :update, :destroy]

  # GET /import_types
  # GET /import_types.json
  def index
    @import_types = ImportType.all
  end

  # GET /import_types/1
  # GET /import_types/1.json
  def show
  end

  # GET /import_types/new
  def new
    @import_type = ImportType.new
  end

  # GET /import_types/1/edit
  def edit
  end

  # POST /import_types
  # POST /import_types.json
  def create
    @import_type = ImportType.new(import_type_params)

    respond_to do |format|
      if @import_type.save
        format.html { redirect_to @import_type, notice: 'Import type was successfully created.' }
        format.json { render :show, status: :created, location: @import_type }
      else
        format.html { render :new }
        format.json { render json: @import_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_types/1
  # PATCH/PUT /import_types/1.json
  def update
    respond_to do |format|
      if @import_type.update(import_type_params)
        format.html { redirect_to @import_type, notice: 'Import type was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_type }
      else
        format.html { render :edit }
        format.json { render json: @import_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_types/1
  # DELETE /import_types/1.json
  def destroy
    @import_type.destroy
    respond_to do |format|
      format.html { redirect_to import_types_url, notice: 'Import type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_type
      @import_type = ImportType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_type_params
      params.require(:import_type).permit(:type_code, :name)
    end
end
