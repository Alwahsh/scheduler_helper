class SegmentCollectionsController < ApplicationController
  before_action :set_segment_collection, only: [:show, :edit, :update, :destroy]

  # GET /segment_collections
  # GET /segment_collections.json
  def index
    @segment_collections = SegmentCollection.all
  end

  # GET /segment_collections/1
  # GET /segment_collections/1.json
  def show
  end

  # GET /segment_collections/new
  def new
    @segment_collection = SegmentCollection.new
  end

  # GET /segment_collections/1/edit
  def edit
  end

  # POST /segment_collections
  # POST /segment_collections.json
  def create
    @segment_collection = SegmentCollection.new(segment_collection_params)

    respond_to do |format|
      if @segment_collection.save
        format.html { redirect_to @segment_collection, notice: 'Segment collection was successfully created.' }
        format.json { render :show, status: :created, location: @segment_collection }
      else
        format.html { render :new }
        format.json { render json: @segment_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /segment_collections/1
  # PATCH/PUT /segment_collections/1.json
  def update
    respond_to do |format|
      if @segment_collection.update(segment_collection_params)
        format.html { redirect_to @segment_collection, notice: 'Segment collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @segment_collection }
      else
        format.html { render :edit }
        format.json { render json: @segment_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /segment_collections/1
  # DELETE /segment_collections/1.json
  def destroy
    @segment_collection.destroy
    respond_to do |format|
      format.html { redirect_to segment_collections_url, notice: 'Segment collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segment_collection
      @segment_collection = SegmentCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def segment_collection_params
      params[:segment_collection]
    end
end
