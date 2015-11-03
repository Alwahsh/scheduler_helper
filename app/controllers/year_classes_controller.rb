class YearClassesController < ApplicationController
  before_action :set_year_class, only: [:show, :edit, :update, :destroy]

  # GET /year_classes
  # GET /year_classes.json
  def index
    @year_classes = YearClass.all
  end

  # GET /year_classes/1
  # GET /year_classes/1.json
  def show
  end

  # GET /year_classes/new
  def new
    @year_class = YearClass.new
  end

  # GET /year_classes/1/edit
  def edit
  end

  # POST /year_classes
  # POST /year_classes.json
  def create
    @year_class = YearClass.new(year_class_params)

    respond_to do |format|
      if @year_class.save
        format.html { redirect_to @year_class, notice: 'Year class was successfully created.' }
        format.json { render :show, status: :created, location: @year_class }
      else
        format.html { render :new }
        format.json { render json: @year_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /year_classes/1
  # PATCH/PUT /year_classes/1.json
  def update
    respond_to do |format|
      if @year_class.update(year_class_params)
        format.html { redirect_to @year_class, notice: 'Year class was successfully updated.' }
        format.json { render :show, status: :ok, location: @year_class }
      else
        format.html { render :edit }
        format.json { render json: @year_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /year_classes/1
  # DELETE /year_classes/1.json
  def destroy
    @year_class.destroy
    respond_to do |format|
      format.html { redirect_to year_classes_url, notice: 'Year class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_year_class
      @year_class = YearClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def year_class_params
      params.require(:year_class).permit(:type, :code)
    end
end
