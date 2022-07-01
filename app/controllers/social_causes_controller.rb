class SocialCausesController < ApplicationController
  before_action :set_social_cause, only: %i[ show edit update destroy ]

  # GET /social_causes or /social_causes.json
  def index
    @social_causes = SocialCause.all
  end

  # GET /social_causes/1 or /social_causes/1.json
  def show
  end

  # GET /social_causes/new
  def new
    @social_cause = SocialCause.new
  end

  # GET /social_causes/1/edit
  def edit
  end

  # POST /social_causes or /social_causes.json
  def create
    @social_cause = SocialCause.new(social_cause_params)

    respond_to do |format|
      if @social_cause.save
        format.html { redirect_to social_cause_url(@social_cause), notice: "Social cause was successfully created." }
        format.json { render :show, status: :created, location: @social_cause }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @social_cause.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_causes/1 or /social_causes/1.json
  def update
    respond_to do |format|
      if @social_cause.update(social_cause_params)
        format.html { redirect_to social_cause_url(@social_cause), notice: "Social cause was successfully updated." }
        format.json { render :show, status: :ok, location: @social_cause }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @social_cause.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_causes/1 or /social_causes/1.json
  def destroy
    @social_cause.destroy

    respond_to do |format|
      format.html { redirect_to social_causes_url, notice: "Social cause was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_cause
      @social_cause = SocialCause.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_cause_params
      params.require(:social_cause).permit(:id_causa, :rut_beneficiario, :dv_rut_person, :nombre_causa, :descripcion, :fundacion_u_ong_relacionada, :asesor_asignado, :puntaje_causa, :rut_beneficiario_causa, :dv_rut_benef, :tipo_causa, :tamano_causa, :fecha_ingreso_causa)
    end
end
