class FinancialStatesController < ApplicationController
  before_action :set_financial_state, only: %i[ show edit update destroy ]

  # GET /financial_states or /financial_states.json
  def index
    @financial_states = FinancialState.all
  end

  # GET /financial_states/1 or /financial_states/1.json
  def show
  end

  # GET /financial_states/new
  def new
    @financial_state = FinancialState.new
  end

  # GET /financial_states/1/edit
  def edit
  end

  # POST /financial_states or /financial_states.json
  def create
    @financial_state = FinancialState.new(financial_state_params)

    respond_to do |format|
      if @financial_state.save
        format.html { redirect_to financial_state_url(@financial_state), notice: "Financial state was successfully created." }
        format.json { render :show, status: :created, location: @financial_state }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @financial_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_states/1 or /financial_states/1.json
  def update
    respond_to do |format|
      if @financial_state.update(financial_state_params)
        format.html { redirect_to financial_state_url(@financial_state), notice: "Financial state was successfully updated." }
        format.json { render :show, status: :ok, location: @financial_state }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @financial_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_states/1 or /financial_states/1.json
  def destroy
    @financial_state.destroy

    respond_to do |format|
      format.html { redirect_to financial_states_url, notice: "Financial state was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_state
      @financial_state = FinancialState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def financial_state_params
      params.require(:financial_state).permit(:estado_financiero, :rut_person, :dv_rut_person, :renta_mensual, :pago_mensual_total, :monto_deuda_total, :fecha_actualizacion)
    end
end
