class UesrsController < ApplicationController
  before_action :set_uesr, only: [:show, :edit, :update, :destroy]

  # GET /uesrs
  # GET /uesrs.json
  def index
    @uesrs = Uesr.all
  end

  # GET /uesrs/1
  # GET /uesrs/1.json
  def show
  end

  # GET /uesrs/new
  def new
    @uesr = Uesr.new
  end

  # GET /uesrs/1/edit
  def edit
  end

  # POST /uesrs
  # POST /uesrs.json
  def create
    @uesr = Uesr.new(uesr_params)

    respond_to do |format|
      if @uesr.save
        format.html { redirect_to @uesr, notice: 'Uesr was successfully created.' }
        format.json { render :show, status: :created, location: @uesr }
      else
        format.html { render :new }
        format.json { render json: @uesr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uesrs/1
  # PATCH/PUT /uesrs/1.json
  def update
    respond_to do |format|
      if @uesr.update(uesr_params)
        format.html { redirect_to @uesr, notice: 'Uesr was successfully updated.' }
        format.json { render :show, status: :ok, location: @uesr }
      else
        format.html { render :edit }
        format.json { render json: @uesr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uesrs/1
  # DELETE /uesrs/1.json
  def destroy
    @uesr.destroy
    respond_to do |format|
      format.html { redirect_to uesrs_url, notice: 'Uesr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uesr
      @uesr = Uesr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uesr_params
      params.require(:uesr).permit(:name, :email)
    end
end
