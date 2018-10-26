class InstituesController < ApplicationController
  before_action :set_institue, only: [:show, :edit, :update, :destroy]

  # GET /institues
  # GET /institues.json
  def index
    @institues = Institue.all
  end

  # GET /institues/1
  # GET /institues/1.json
  def show
  end

  # GET /institues/new
  def new
    @institue = Institue.new
  end

  # GET /institues/1/edit
  def edit
  end

  # POST /institues
  # POST /institues.json
  def create
    @institue = Institue.new(institue_params)

    respond_to do |format|
      if @institue.save
        format.html { redirect_to @institue, notice: 'Institue was successfully created.' }
        format.json { render :show, status: :created, location: @institue }
      else
        format.html { render :new }
        format.json { render json: @institue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institues/1
  # PATCH/PUT /institues/1.json
  def update
    respond_to do |format|
      if @institue.update(institue_params)
        format.html { redirect_to @institue, notice: 'Institue was successfully updated.' }
        format.json { render :show, status: :ok, location: @institue }
      else
        format.html { render :edit }
        format.json { render json: @institue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institues/1
  # DELETE /institues/1.json
  def destroy
    @institue.destroy
    respond_to do |format|
      format.html { redirect_to institues_url, notice: 'Institue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institue
      @institue = Institue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institue_params
      params.require(:institue).permit(:name, :contact, :direction, :district, :phone, :email)
    end
end
