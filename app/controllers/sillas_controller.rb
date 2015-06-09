class SillasController < ApplicationController
  before_action :set_silla, only: [:show, :edit, :update, :destroy]

  # GET /sillas
  # GET /sillas.json
  def index
    @sillas = Silla.all
  end

  # GET /sillas/1
  # GET /sillas/1.json
  def show
  end

  # GET /sillas/new
  def new
    @silla = Silla.new
  end

  # GET /sillas/1/edit
  def edit
  end

  # POST /sillas
  # POST /sillas.json
  def create
    @silla = Silla.new(silla_params)

    respond_to do |format|
      if @silla.save
        format.html { redirect_to @silla, notice: 'Silla was successfully created.' }
        format.json { render :show, status: :created, location: @silla }
      else
        format.html { render :new }
        format.json { render json: @silla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sillas/1
  # PATCH/PUT /sillas/1.json
  def update
    respond_to do |format|
      if @silla.update(silla_params)
        format.html { redirect_to @silla, notice: 'Silla was successfully updated.' }
        format.json { render :show, status: :ok, location: @silla }
      else
        format.html { render :edit }
        format.json { render json: @silla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sillas/1
  # DELETE /sillas/1.json
  def destroy
    @silla.destroy
    respond_to do |format|
      format.html { redirect_to sillas_url, notice: 'Silla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_silla
      @silla = Silla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def silla_params
      params[:silla]
    end
end
