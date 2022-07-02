class DeudaUsersController < ApplicationController
  before_action :set_deuda_user, only: %i[ show edit update destroy ]

  # GET /deuda_users or /deuda_users.json
  def index
    @deuda_users = DeudaUser.all
  end

  # GET /deuda_users/1 or /deuda_users/1.json
  def show
  end

  # GET /deuda_users/new
  def new
    @deuda_user = DeudaUser.new
  end

  # GET /deuda_users/1/edit
  def edit
  end

  # POST /deuda_users or /deuda_users.json
  def create
    @deuda_user = DeudaUser.new(deuda_user_params)

    respond_to do |format|
      if @deuda_user.save
        format.html { redirect_to deuda_user_url(@deuda_user), notice: "Deuda user was successfully created." }
        format.json { render :show, status: :created, location: @deuda_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deuda_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deuda_users/1 or /deuda_users/1.json
  def update
    respond_to do |format|
      if @deuda_user.update(deuda_user_params)
        format.html { redirect_to deuda_user_url(@deuda_user), notice: "Deuda user was successfully updated." }
        format.json { render :show, status: :ok, location: @deuda_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deuda_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deuda_users/1 or /deuda_users/1.json
  def destroy
    @deuda_user.destroy

    respond_to do |format|
      format.html { redirect_to deuda_users_url, notice: "Deuda user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deuda_user
      @deuda_user = DeudaUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deuda_user_params
      params.require(:deuda_user).permit(:rut_person, :dv_rut_person, :institucion_1, :tipo_deuda_1, :monto_deuda_1, :pago_mensual_1, :meses_sin_pago_1, :pago_mensual_total, :monto_deuda_total)
    end
end
