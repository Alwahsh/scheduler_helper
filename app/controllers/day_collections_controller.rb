class DayCollectionsController < ApplicationController
  before_action :set_day_collection, only: [:show, :edit, :update, :destroy]

  # GET /day_collections
  # GET /day_collections.json
  def index
    @day_collections = DayCollection.all
  end

  # GET /day_collections/1
  # GET /day_collections/1.json
  def show
  end

  # GET /day_collections/new
  def new
    @day_collection = DayCollection.new
  end

  # GET /day_collections/1/edit
  def edit
  end

  # POST /day_collections
  # POST /day_collections.json
  def create
    @day_collection = DayCollection.new(day_collection_params)

    respond_to do |format|
      if @day_collection.save
        format.html { redirect_to @day_collection, notice: 'Day collection was successfully created.' }
        format.json { render :show, status: :created, location: @day_collection }
      else
        format.html { render :new }
        format.json { render json: @day_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_collections/1
  # PATCH/PUT /day_collections/1.json
  def update
    respond_to do |format|
      if @day_collection.update(day_collection_params)
        format.html { redirect_to @day_collection, notice: 'Day collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @day_collection }
      else
        format.html { render :edit }
        format.json { render json: @day_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_collections/1
  # DELETE /day_collections/1.json
  def destroy
    @day_collection.destroy
    respond_to do |format|
      format.html { redirect_to day_collections_url, notice: 'Day collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_collection
      @day_collection = DayCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_collection_params
      params[:day_collection]
    end
end
