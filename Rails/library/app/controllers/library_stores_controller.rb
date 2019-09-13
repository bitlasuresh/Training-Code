class LibraryStoresController < ApplicationController
  before_action :set_library_store, only: [:show, :edit, :update, :destroy]

  # GET /library_stores
  # GET /library_stores.json
  def index
    @library_stores = LibraryStore.all
  end

  # GET /library_stores/1
  # GET /library_stores/1.json
  def show
  end

  # GET /library_stores/new
  def new
    @library_store = LibraryStore.new
  end

  # GET /library_stores/1/edit
  def edit
  end

  # POST /library_stores
  # POST /library_stores.json
  def create
    @library_store = LibraryStore.new(library_store_params)

    respond_to do |format|
      if @library_store.save
        format.html { redirect_to @library_store, notice: 'Library store was successfully created.' }
        format.json { render :show, status: :created, location: @library_store }
      else
        format.html { render :new }
        format.json { render json: @library_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /library_stores/1
  # PATCH/PUT /library_stores/1.json
  def update
    respond_to do |format|
      if @library_store.update(library_store_params)
        format.html { redirect_to @library_store, notice: 'Library store was successfully updated.' }
        format.json { render :show, status: :ok, location: @library_store }
      else
        format.html { render :edit }
        format.json { render json: @library_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_stores/1
  # DELETE /library_stores/1.json
  def destroy
    @library_store.destroy
    respond_to do |format|
      format.html { redirect_to library_stores_url, notice: 'Library store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library_store
      @library_store = LibraryStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def library_store_params
      params.require(:library_store).permit(:name, :author)
    end
end
