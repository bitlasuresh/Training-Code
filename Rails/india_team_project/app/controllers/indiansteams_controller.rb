class IndiansteamsController < ApplicationController
  before_action :set_indiansteam, only: [:show, :edit, :update, :destroy]

  # GET /indiansteams
  # GET /indiansteams.json
  def index
    @indiansteams = Indiansteam.all
  end

  # GET /indiansteams/1
  # GET /indiansteams/1.json
  def show
  end

  # GET /indiansteams/new
  def new
    @indiansteam = Indiansteam.new
  end

  # GET /indiansteams/1/edit
  def edit
  end

  # POST /indiansteams
  # POST /indiansteams.json
  def create
    @indiansteam = Indiansteam.new(indiansteam_params)

    respond_to do |format|
      if @indiansteam.save
        format.html { redirect_to @indiansteam, notice: 'Indiansteam was successfully created.' }
        format.json { render :show, status: :created, location: @indiansteam }
      else
        format.html { render :new }
        format.json { render json: @indiansteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indiansteams/1
  # PATCH/PUT /indiansteams/1.json
  def update
    respond_to do |format|
      if @indiansteam.update(indiansteam_params)
        format.html { redirect_to @indiansteam, notice: 'Indiansteam was successfully updated.' }
        format.json { render :show, status: :ok, location: @indiansteam }
      else
        format.html { render :edit }
        format.json { render json: @indiansteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indiansteams/1
  # DELETE /indiansteams/1.json
  def destroy
    @indiansteam.destroy
    respond_to do |format|
      format.html { redirect_to indiansteams_url, notice: 'Indiansteam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indiansteam
      @indiansteam = Indiansteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indiansteam_params
      params.fetch(:indiansteam, {})
    end
end
