class PatiencesController < ApplicationController
  before_action :set_patience, only: [:show, :edit, :update, :destroy]

  # GET /patiences
  # GET /patiences.json
  def index
    @patiences = Patience.all
  end

  # GET /patiences/1
  # GET /patiences/1.json
  def show
  end

  # GET /patiences/new
  def new
    @patience = Patience.new
  end

  # GET /patiences/1/edit
  def edit
  end

  # POST /patiences
  # POST /patiences.json
  def create
    @patience = Patience.new(patience_params)

    respond_to do |format|
      if @patience.save
        format.html { redirect_to @patience, notice: 'Patience was successfully created.' }
        format.json { render :show, status: :created, location: @patience }
      else
        format.html { render :new }
        format.json { render json: @patience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patiences/1
  # PATCH/PUT /patiences/1.json
  def update
    respond_to do |format|
      if @patience.update(patience_params)
        format.html { redirect_to @patience, notice: 'Patience was successfully updated.' }
        format.json { render :show, status: :ok, location: @patience }
      else
        format.html { render :edit }
        format.json { render json: @patience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patiences/1
  # DELETE /patiences/1.json
  def destroy
    @patience.destroy
    respond_to do |format|
      format.html { redirect_to patiences_url, notice: 'Patience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patience
      @patience = Patience.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patience_params
      params.require(:patience).permit(:fullname, :sickness, :medicines, :user_id)
    end
end
