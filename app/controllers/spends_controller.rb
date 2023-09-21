class SpendsController < ApplicationController
  before_action :set_spend, only: %i[show edit update destroy]

  # GET /spends or /spends.json
  def index
    c_id = params[:category_id]
    @category = Category.find(c_id)
    @spends = @category.spends
  end

  # GET /spends/new
  def new
    @category = Category.find(params[:category_id])
    @spend = @category.spends.build
  end

  # POST /spends or /spends.json
  def create
    @category = Category.find(params[:spend][:category_id])
    @spend = @category.spends.build(spend_params)
    puts "Parameters received from the form: #{params.inspect}"

    respond_to do |format|
      if @spend.save
        format.html { redirect_to category_spends_path(@category), notice: 'Spend was successfully created.' }
        format.json { render :show, status: :created, location: @spend }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spend.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spend
    @spend = Spend.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def spend_params
    params.require(:spend).permit(:user_id, :name, :amount, :created_at, category_ids: [])
  end
end
