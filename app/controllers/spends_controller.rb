class SpendsController < ApplicationController
  before_action :set_spend, only: %i[ show edit update destroy ]

  # GET /spends or /spends.json
  def index
    @c_id = params[:category_id]
    @spends = Spend.where(category_id: @c_id)
    @category_name = Category.find(@c_id).name
  end
  
  

  # GET /spends/1 or /spends/1.json
  def show
  end

  # GET /spends/new
  def new
    @category = Category.find(params[:category_id])
    # @category_id = params[:category_id]
    @spend = @category.spends.build
  end

   # POST /spends or /spends.json
  def create
    @category_id = params[:category_id]
    @spend = Spend.new(spend_params)

    respond_to do |format|
      if @spend.save
        format.html { redirect_to category_spends_path(@category_id), notice: "Spend was successfully created." }
        format.json { render :show, status: :created, location: @spend }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spends/1 or /spends/1.json
  def destroy
    @spend.destroy

    respond_to do |format|
      format.html { redirect_to spends_url, notice: "Spend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spend
      @spend = Spend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spend_params
      params.require(:spend).permit(:author_id, :name, :amount, :created_at).merge(category_id: @category_id)
    end
end
