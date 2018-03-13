class BinariansController < ApplicationController
  before_action :set_binarian, only: [:show, :edit, :update, :destroy]

  # GET /binarians
  # GET /binarians.json
  def index
    @binarians = Binarian.all
  end

  # GET /binarians/1
  # GET /binarians/1.json
  def show
  end

  # GET /binarians/new
  def new
    @binarian = Binarian.new
  end

  # GET /binarians/1/edit
  def edit
  end

  # POST /binarians
  # POST /binarians.json
  def create
    @binarian = Binarian.new(binarian_params)

    respond_to do |format|
      if @binarian.save
        format.html { redirect_to @binarian, notice: 'Binarian was successfully created.' }
        format.json { render :show, status: :created, location: @binarian }
      else
        format.html { render :new }
        format.json { render json: @binarian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /binarians/1
  # PATCH/PUT /binarians/1.json
  def update
    respond_to do |format|
      if @binarian.update(binarian_params)
        format.html { redirect_to @binarian, notice: 'Binarian was successfully updated.' }
        format.json { render :show, status: :ok, location: @binarian }
      else
        format.html { render :edit }
        format.json { render json: @binarian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /binarians/1
  # DELETE /binarians/1.json
  def destroy
    @binarian.destroy
    respond_to do |format|
      format.html { redirect_to binarians_url, notice: 'Binarian was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_binarian
      @binarian = Binarian.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def binarian_params
      params.require(:binarian).permit(:nama, :umur, :alamat)
    end
end
